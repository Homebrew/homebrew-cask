cask "firefox@nightly" do
  version "152.0a1,2026-05-08-13-07-36"

  language "ca" do
    sha256 "f5d93fc5aa2b3c19991d1b9c2b13c74dd3ed73d7e60c8e55e922c312555b4fd6"
    "ca"
  end
  language "cs" do
    sha256 "95a4be2923fd79f35e43d1bfde2a03cacd92edcc92ac2d5221a25b05d4ef183f"
    "cs"
  end
  language "de" do
    sha256 "aaa549f38f88da60cc8affbf15445a9f056aa16121c48cf0cb8d059a4fb76f10"
    "de"
  end
  language "en-CA" do
    sha256 "f4c977c42b4460bcce2457563f55e16a0476644196f83259f71b54277cc22de3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "cda2587e7728cf0a76ee7e70b2e11cffe4579d64d42416935dd2850b24ac9298"
    "en-GB"
  end
  language "en", default: true do
    sha256 "887ca288a8e223d3deea71f1055f5c46afea6cfc994224e9d59f64ca056e1e62"
    "en-US"
  end
  language "es" do
    sha256 "4089e9bfc342597652b88a3754851b95b088d8cb24a1fe641e181c8f80df32c6"
    "es-ES"
  end
  language "fr" do
    sha256 "007a5fd9217378209afdacc90e8fd421eb36e781e49c2659749d02d14cb1b4e8"
    "fr"
  end
  language "it" do
    sha256 "f088f535d8c1e9415cf90fade81b6590188a98ec5881726da10bd1b41b06b2bf"
    "it"
  end
  language "ja" do
    sha256 "096fe356a728453ffbff413668b78e05e807d649c1ee3bbe869d5eeaebe3f381"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2e008aeb38a514b41633cdeaf837e48efbae075989496f34a6bae02dac569d7e"
    "ko"
  end
  language "nl" do
    sha256 "aab256238e253f096c0b0601ef915ff93449e35731e78a3b3c46e271e9828e1c"
    "nl"
  end
  language "pt-BR" do
    sha256 "c688a9b17b14b4d8944d030f8f198e015538b791abc7fd7eb2988632b01d5db9"
    "pt-BR"
  end
  language "ru" do
    sha256 "0ebc7ab77ba17982fe567484b3d2fcd0c4ecd815c5607ee8139981b3bb19a050"
    "ru"
  end
  language "uk" do
    sha256 "2f502d8731a82fc8e332d44c19a3d5ed9630ffb0580e9d013e44d26a0f3908b4"
    "uk"
  end
  language "zh-TW" do
    sha256 "8f8b17a466d0f6c3de103835dfbf854702049c99c6c0564e42aa24a312d16ced"
    "zh-TW"
  end
  language "zh" do
    sha256 "5860a3fb612ea0b77d0f36d1b183cbe86ee640ef7965e5c2d9073fe5c312414f"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/firefox/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-mozilla-central#{"-l10n" if language != "en-US"}/firefox-#{version.csv.first}.#{language}.mac.dmg"
  name "Mozilla Firefox Nightly"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#nightly"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    regex(%r{/(\d+(?:[._-]\d+)+)[^/]*/firefox}i)
    strategy :json do |json, regex|
      version = json["FIREFOX_NIGHTLY"]
      next if version.blank?

      content = Homebrew::Livecheck::Strategy.page_content("https://ftp.mozilla.org/pub/firefox/nightly/latest-mozilla-central/firefox-#{version}.en-US.mac.buildhub.json")
      next if content[:content].blank?

      build_json = Homebrew::Livecheck::Strategy::Json.parse_json(content[:content])
      build = build_json.dig("download", "url")&.[](regex, 1)
      next if build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true
  depends_on :macos

  app "Firefox Nightly.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.firefox.plist",
        "~/Library/Saved Application State/org.mozilla.firefox.savedState",
        "~/Library/WebKit/org.mozilla.firefox",
      ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla/updates/Applications",
      ]
end
