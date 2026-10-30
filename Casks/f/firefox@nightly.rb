cask "firefox@nightly" do
  version "161.0a1,2026-10-29-21-23-58"

  language "ca" do
    sha256 "903e84d00b2e40b406ceecf95048ea6826620de45578071962bcc9bc5ba7d23f"
    "ca"
  end
  language "cs" do
    sha256 "0e1a476d20cf4300281187365c01eade8cfa3e201d9e68b03d069a14b486cd6e"
    "cs"
  end
  language "de" do
    sha256 "71acd90403d05fa515686ac178c5a42bc0cca7773a3edd585e49b3260c2af488"
    "de"
  end
  language "en-CA" do
    sha256 "a33b4653b788c7cdf3ff1ce1f594ed95e961e0372697658d4adce2bdcabd560d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6546c737881587e0ab05dca8f3b2849752c416e3535df72d0767ad847028162f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "621040e2be9fa1011197a6ae31ec7c437678c78e7cd9a07fccb24a11b434ee1f"
    "en-US"
  end
  language "es" do
    sha256 "a6c728fef056615a9b921b285268bfb52e25fb87a4ca48d5633ee6c320ebe694"
    "es-ES"
  end
  language "fr" do
    sha256 "fea1bdc3d7b86038db74a270cd61b60dcb448eafaf6df47fcc35f67c70d030aa"
    "fr"
  end
  language "it" do
    sha256 "6e940b4b473bd5de79fefdcc2896068d7f62456d40a58beb0e48ef25f7b3ee0c"
    "it"
  end
  language "ja" do
    sha256 "cef8929daed232b9aec303191b5ab74e7bab7b67e4561cb56b8e75ea719fabf7"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "4003f08d781ed61d9c05dddfa42d9c7578856c93686d3985f6f45da2237a677e"
    "ko"
  end
  language "nl" do
    sha256 "639b2b8d1fe2246585739fc2fda1fb97145eff37d5d9b54423f752ef1933587d"
    "nl"
  end
  language "pt-BR" do
    sha256 "9bab13ea78ae7afe7ba2cb3c46408c14441e6d54ee6621c93f524f28e997c23a"
    "pt-BR"
  end
  language "ru" do
    sha256 "5d2ff8db89b0cb3d76ef56ffb193fdc1acef7c19eda259c9ff5c8472a44e665d"
    "ru"
  end
  language "uk" do
    sha256 "5da85f57dad66613eb0b6110e16a97590e1ce308448a5e96fe6801bf52ebb0da"
    "uk"
  end
  language "zh-TW" do
    sha256 "f008804eea763219b8eac9fbd4e9c50e0330ae146c06b2a572fd1f9e86993810"
    "zh-TW"
  end
  language "zh" do
    sha256 "9e1ec8dbb2c90e7ff690fbbd1b7c12987bea6b6df5b94ed4b127308f2a9a84ce"
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
        "~/Library/Preferences/org.mozilla.nightly.plist",
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
