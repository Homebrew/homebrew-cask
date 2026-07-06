cask "firefox@nightly" do
  version "154.0a1,2026-07-05-20-48-34"

  language "ca" do
    sha256 "252c0203a84da410212fa4e44c27b6c180f3d4c7feb87e7290b45b924ce6cafc"
    "ca"
  end
  language "cs" do
    sha256 "365367728973b722308e1f7ce1ef00b7dfeb54f17267db99bcb974adcae6cdb7"
    "cs"
  end
  language "de" do
    sha256 "8dfcc264558d36efe7204d8a0233eff4db840bc97a4e1842b11a3bb1b9548ce7"
    "de"
  end
  language "en-CA" do
    sha256 "f1908e139cb1ab89add92f6854ad05350fdd6439d3aa61f0e862007bb80cdfcd"
    "en-CA"
  end
  language "en-GB" do
    sha256 "84ceee9849bebce78d45bf523ca47f54aaf7cbb295507a0f9885fab7d7806f42"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4f13fc832145ce318795a02c1c681a50d987ba054f0077bd014522b65bfe62e0"
    "en-US"
  end
  language "es" do
    sha256 "e6a8e98ddedf155bd9e4087edf872fac62710badfb77553cdae0947c4e0331bb"
    "es-ES"
  end
  language "fr" do
    sha256 "f90965539674c793a8641aeee9039a2e39c310109f64f8683ca0b98a82c23adb"
    "fr"
  end
  language "it" do
    sha256 "8ac0807936f9dfd278dbdd0753d56ac7071182569aa583f677934375e26d5ad3"
    "it"
  end
  language "ja" do
    sha256 "2e8f777d1868677c81a6505b197412fe689ab8eed4bc8c23bd4800eddd54247e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "28726db0e250c5b780f83f5b37fa8c93005ca12f01c6a280c12df95a92c2e3d7"
    "ko"
  end
  language "nl" do
    sha256 "948180c9bd5127eaca28d91af08d445fa0608486c73512032d2e1e579fbdf6a2"
    "nl"
  end
  language "pt-BR" do
    sha256 "b19f3225f1f3983ac21a4b81295ad1e9e6ac7f7ca23d3583650f76f93ad5b590"
    "pt-BR"
  end
  language "ru" do
    sha256 "f9323ac140d4e04f70902250f0530d44842837eea7860427e6c20b8777afec90"
    "ru"
  end
  language "uk" do
    sha256 "79b47398884c5d6919175319967c313195ed039e677876ecb31e9c99ee08c041"
    "uk"
  end
  language "zh-TW" do
    sha256 "4d9b1b3feb09bb6b559e2ca8031c041919d6e820a8b4190a2e817942b9ac522f"
    "zh-TW"
  end
  language "zh" do
    sha256 "0b07c322e9949f6b384c45f0e7724ca773927bfe4795d012914377dc9408f8a3"
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
