cask "firefox@nightly" do
  version "154.0a1,2026-06-17-10-10-13"

  language "ca" do
    sha256 "a3fbccd8e7c7fed4e2202252102427c1d9b5c2254b55188888fd3746ab80eccd"
    "ca"
  end
  language "cs" do
    sha256 "765ffd0e3d04c02089798564dc32086fcb8d412d98ca6fc7ab533f6167b80bf6"
    "cs"
  end
  language "de" do
    sha256 "f1d2419c054b4cf4e4fd7e5254d78f84e0f4a08dcde8e4ce2f3be5da25680441"
    "de"
  end
  language "en-CA" do
    sha256 "30f81a3d36fb59286a051c8ff96424aee01579f0d72e26797589af336460965e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8549781b04c291b798db1a073f824853f733ea33ba405cc8b9e1fec6e8be889d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6c376be622e369039728b5cbf0674e9d1c01b94226ebf543d8bd026259ba81c4"
    "en-US"
  end
  language "es" do
    sha256 "a723de1c82afc1d54777c4e38943016348a41ed5be6512aafc8e8da4bebcd70a"
    "es-ES"
  end
  language "fr" do
    sha256 "9bc19695804a105d7d7a146f2e8112deb8d653b7f505b465af29b3d0fdcf6188"
    "fr"
  end
  language "it" do
    sha256 "c664dd5ca27fcd63a68607b837737da396bef640b2ce243ba4da23720797dfc9"
    "it"
  end
  language "ja" do
    sha256 "380e259d671a63994a8d36db91f5691ac03995d587336cc8e96530c0348b3654"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e7f3981e0bd55ff2f2d669da6769a16eec955e74761a411da4564db1949b0a6e"
    "ko"
  end
  language "nl" do
    sha256 "2b2b98e93327cce898b2678e531abf5c4e2d9ffd66b7fc527645e5496b405c8c"
    "nl"
  end
  language "pt-BR" do
    sha256 "55842b6925af9096134fde071fe035cfbae977ded2c38c2c07afe59bca6d50a4"
    "pt-BR"
  end
  language "ru" do
    sha256 "93eac007eafe690b66c05bea79f13fb1fab001a5d4f0f2c69459c679a81d2cae"
    "ru"
  end
  language "uk" do
    sha256 "6cd005d7ea6e8c622409abcbd084d501967fd74867577a026eec33666969599c"
    "uk"
  end
  language "zh-TW" do
    sha256 "b12359f5723758b2d906f5f7f18fb9101d6b0c0902fb0284769e018b24d8d93e"
    "zh-TW"
  end
  language "zh" do
    sha256 "e6f1ef6d1d69ce02dd882348cc8ffdceab303ea5e1cc524f0a52086c9354b4b5"
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
