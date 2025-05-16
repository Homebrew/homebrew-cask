cask "firefox@nightly" do
  version "140.0a1,2025-05-15-23-03-42"

  language "ca" do
    sha256 "435db26d48dba8d23d2a19710716a34b387850a6b57782e470a352776fcafec1"
    "ca"
  end
  language "cs" do
    sha256 "0860c6f930ed57e73801f10055465dcd4e67434ea3235a78420d917fb84c40cc"
    "cs"
  end
  language "de" do
    sha256 "35b4b11deaa755523b83f96ba7b7677fb678d8fcf4894e69d7b80dbf83181159"
    "de"
  end
  language "en-CA" do
    sha256 "5e200a422b8f049b6a60a321f2d5c3217988dafd7c1a823a820e79f48704b44d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b715cde9e1a6f22714e0c48412d691e1d3520e07ef7e602394a03ef5a1f495a8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "90872c8dbcb6a225d500de2b87067aee52613a052aede3268dc57f1838983771"
    "en-US"
  end
  language "es" do
    sha256 "ed3de2da14cb67a20b9e7a89ac7c058abfd41cab621d487a655e8c228b908df0"
    "es-ES"
  end
  language "fr" do
    sha256 "dd945b6a67873f34ef5d85fd07bfdff0d55677f00dbd54ad1366364436265f96"
    "fr"
  end
  language "it" do
    sha256 "f4b70dbb81cb8a474609b98ddb448ae0c414f940129d71c7375ea8934488a362"
    "it"
  end
  language "ja" do
    sha256 "0fb693e0693835edc61f7ed2ac14fc93944071626427fde11bc659cdc6f8e718"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ca7e857ad5d1a54f4931968eaee36860dbd6e013d913a09cce4fa2b7c411814c"
    "ko"
  end
  language "nl" do
    sha256 "f722bce14a3ed38201b3a7d9f0f5f22f939f0763dedf4ae632ab042a4a5697f2"
    "nl"
  end
  language "pt-BR" do
    sha256 "7167bd80c2f78d972c7e71a2db182c214c24a57ae572bfdd6bfef65bb2468706"
    "pt-BR"
  end
  language "ru" do
    sha256 "26396fb74662f82f5530e56e217c070e7df6cf914b4ff456ad12a553dc78984b"
    "ru"
  end
  language "uk" do
    sha256 "c6a5d119820b275a9f039a482e5dc18ed078f7f3b20672b0f314a4292dd4a01f"
    "uk"
  end
  language "zh-TW" do
    sha256 "207cf13d9b541dad84988c865d41530a591f76cd90afe65f8a3e07cf4116d2d1"
    "zh-TW"
  end
  language "zh" do
    sha256 "dc529e21cb7cbbaf190edf8eed36093007396865c95c4ea0dbe52a5ad8c70a17"
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
  depends_on macos: ">= :catalina"

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
