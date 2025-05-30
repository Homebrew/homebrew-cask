cask "firefox@nightly" do
  version "141.0a1,2025-05-30-03-54-36"

  language "ca" do
    sha256 "6954fe909b7c78c9c61273e337b8f976685bbef6d97c94550539ad4582933140"
    "ca"
  end
  language "cs" do
    sha256 "fffd1ad21e8dfc232f975e29e09a9a3d49362380afea40ace4bd70d93a9baa3b"
    "cs"
  end
  language "de" do
    sha256 "e545ccd383aa2e5555bb4e4e1d549c9769f96b2961d6e76814ff00ea81394e18"
    "de"
  end
  language "en-CA" do
    sha256 "20db4428e88cfa6d69b76536dcbf73a07f8abf01749242d39445c649788d7ef4"
    "en-CA"
  end
  language "en-GB" do
    sha256 "cba6713dff236f3b0bfa584795675752f2f90e10afc6d9bb89f931cd761bdd37"
    "en-GB"
  end
  language "en", default: true do
    sha256 "719309239765034766ae9ea54783d5c0cc3243f82e8b876f1d93272fdef8d2dd"
    "en-US"
  end
  language "es" do
    sha256 "9cb6b6cfa08d24e52cd38db4949eda0fc8bd519ee9d579aee08d8754b4ecd7ff"
    "es-ES"
  end
  language "fr" do
    sha256 "101b88bddf9a0fafc27cf4ba5ce11b600ae8d9d3f0fa6850fd4aac51e67ed467"
    "fr"
  end
  language "it" do
    sha256 "699780f8a6c3e9298eb71e21671378c249ae457da153e9028153d82e98198ef6"
    "it"
  end
  language "ja" do
    sha256 "30aa4d18855592e31dcd505d1147d36b7a0add64e04d91bb1783df66a1661fe8"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "5c32316958c66b5017c097fb753c0de22a57aeaa15af239e7b3d2b97d23fc2af"
    "ko"
  end
  language "nl" do
    sha256 "41147dcb28bdabd355b379bc4a6710ce5d25818f6b396917d7db7c5e47a7e970"
    "nl"
  end
  language "pt-BR" do
    sha256 "4f234ba30a6737a1a9a3586151baee5249d3273741a61122f0fdd95bd575156e"
    "pt-BR"
  end
  language "ru" do
    sha256 "3cac14cc5a632c4ba94dcbc6d3ff04c0968fab6a8aedf75352104a79986e58ed"
    "ru"
  end
  language "uk" do
    sha256 "b62bff79d9242be2e613aea31d103d0abb268b9d83f0a0764f0983a47151af7c"
    "uk"
  end
  language "zh-TW" do
    sha256 "2c4fc12e48da1f4092fee8b68181137ad267e919f4e1933bcde72ccb3c976f0b"
    "zh-TW"
  end
  language "zh" do
    sha256 "bea20c68a8e29bd0b177c038a54b697d7465528088ebca2db65a7dfe63b49968"
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
