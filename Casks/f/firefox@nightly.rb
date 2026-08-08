cask "firefox@nightly" do
  version "155.0a1,2026-08-08-09-30-04"

  language "ca" do
    sha256 "170b7da5858985f975b014abef276cc9d0ceb678cccc3a3222496c528095aad7"
    "ca"
  end
  language "cs" do
    sha256 "87f7ead0c01629fb3f611e1e411c499f76ef50e77ff5798bbd9396eb4bff6813"
    "cs"
  end
  language "de" do
    sha256 "8e17669e61ce4ced9961444f5936f3b551f35228409725e3628423a3ec7061c6"
    "de"
  end
  language "en-CA" do
    sha256 "0df79a710594d34be00bc324095d629612d7a9da39d72a93c7920b5f44d8f34f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "942bec633491b1fdc244a7529b087de7f6f43867bad4ce3893f6f4fb0bef479f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3359d883b1c2c9f72ae7a89f20b61d7d60958f45ff5faceeb2713382d290d14b"
    "en-US"
  end
  language "es" do
    sha256 "3c50fffd093e9f0c6d7bc19d91f3713e990681309a6b94f0eb5c48c5d1ba8633"
    "es-ES"
  end
  language "fr" do
    sha256 "a074c94149b74644f031f13b916da63cf3d37b587b76767f6651932e89275c2b"
    "fr"
  end
  language "it" do
    sha256 "51cd51b13537e8ef8bcba7c7990e60eb871c43a41407001c5a721d66c6da8d41"
    "it"
  end
  language "ja" do
    sha256 "4e4069682316d09e08f95a00234ebd9adef0afe6830e57b46c51f771bfd2be98"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "5e1be25007fbb75229101a29a2858a3df2daed8e3ee19fc6227d9e8ed8f9f271"
    "ko"
  end
  language "nl" do
    sha256 "6e52da802b8fb3d13d703042c20132baaf9bd0117259e2922ea1be797f5fd07f"
    "nl"
  end
  language "pt-BR" do
    sha256 "9c05abcbae606c13a4a408d0021e0ffca18def063d36a037f45d02fa3674b0a1"
    "pt-BR"
  end
  language "ru" do
    sha256 "8dbfcfe488342ecac2918124720039fbd776f68a052b3f88208d895171e5d33e"
    "ru"
  end
  language "uk" do
    sha256 "38aa2d2523a2e374e6b88917ac60b46501a6a6d3ad798e2c83692db5b0f656fd"
    "uk"
  end
  language "zh-TW" do
    sha256 "6c4293b9c559cb60f6ef65622657d39ab4ce342122b57484de56fc1aceab55f8"
    "zh-TW"
  end
  language "zh" do
    sha256 "9fc21f40339247f9a5f720a6a1b697133d583748f9d7cb065e87a4fdf8eb26d3"
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
