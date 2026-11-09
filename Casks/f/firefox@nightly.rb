cask "firefox@nightly" do
  version "162.0a1,2026-11-09-09-21-06"

  language "ca" do
    sha256 "b574b49d71f74a0f97f62f63c0942066f981da990ab4e6bb6238f1ab32e0962d"
    "ca"
  end
  language "cs" do
    sha256 "2137932435763ada47560cb94d7aba10669dc49209106a17e89d5e790f786c04"
    "cs"
  end
  language "de" do
    sha256 "3b8b9fa46da50634e7ef0a8f004d72444edbbaed63dedb0190bc7fbab1501112"
    "de"
  end
  language "en-CA" do
    sha256 "55ec8211be59831062b3701db6ee1fc522a28c38f12c0227c5decd063a7aeb30"
    "en-CA"
  end
  language "en-GB" do
    sha256 "375f3ee2964b6b772097cf280be03e0e6965e5aefcb8c2944b0e8d27d50354f2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "58041dc258b2c3544d2f279b1d1af6b3dddca05b16d91a6a4804ca99bde54b40"
    "en-US"
  end
  language "es" do
    sha256 "939f8e523751931ea2c76fbb240bfbe31d6357d574ef1a24c4c3b966996703fc"
    "es-ES"
  end
  language "fr" do
    sha256 "d7ee368fe64c1b2e1d60f0b3f946a4e0773dc41d283224d23ecebebd7c1d6c91"
    "fr"
  end
  language "it" do
    sha256 "5da668d5bce2a869d925ca6c605a23952469704b7e2536e5015bd2f50f5950aa"
    "it"
  end
  language "ja" do
    sha256 "c6e50d69b0ed1a27276b983181f4db345ac556154fe856f66f1d720142209289"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "e3fe0c3d65e07ba1ce498b089fa36b76f6df072541067d99e213822fc08e2f5f"
    "ko"
  end
  language "nl" do
    sha256 "23a1dc51a79f1355c8e093b2bd6c0a464dde870add8631884a7b5a79a7ac9702"
    "nl"
  end
  language "pt-BR" do
    sha256 "7a2c281b89f5d0c8aadb2402b305aa31fe23b618f86e13ee84fca7a644b51d56"
    "pt-BR"
  end
  language "ru" do
    sha256 "614100a1c794103bd01fad54c7d16999dc4b501ae6e212cbf108c6b1b94be5c1"
    "ru"
  end
  language "uk" do
    sha256 "480867f8ada258fd08a8e5ddbeb9f3b4c442b8e658942aa9b371b2b63e4b1dc2"
    "uk"
  end
  language "zh-TW" do
    sha256 "a9a6f6eb16089141d7536e296775d91963e591c03a3d224f57c062cc87ea7447"
    "zh-TW"
  end
  language "zh" do
    sha256 "7dfe57e06f838b7ac629301ce9a843c0ffd9253b512c845098293ccb6deb5f04"
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
