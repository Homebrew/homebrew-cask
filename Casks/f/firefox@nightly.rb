cask "firefox@nightly" do
  version "150.0a1,2026-03-16-21-45-56"

  language "ca" do
    sha256 "c393501f0b385f955650f318158114bc573401cbda74f13de5e8edb1e008e169"
    "ca"
  end
  language "cs" do
    sha256 "b96de89987b936794b0c4c52f4b12fc63247fe459253ff7877e53b4c5c08cb94"
    "cs"
  end
  language "de" do
    sha256 "8ffc12791c0ca3d15133673031ca4bb91ce7fbb214c009c844e0e722526b13a7"
    "de"
  end
  language "en-CA" do
    sha256 "3bd3110b9f425a720f314f5f6b83a6a2d649818fd0a624825a192c2b8a144347"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e6308692e990c729df54224e29b3805ffe463e4d48621408bb7b8f6ae936769c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3ca5b4590470796aa755a3153cbd92dbe389bb3376d86e1ee4791c95334f99d3"
    "en-US"
  end
  language "es" do
    sha256 "6e2c2c9bb520c6f868af41232ccab62062fdcfee885f72f6f58738e08b795df9"
    "es-ES"
  end
  language "fr" do
    sha256 "69b2a51428187b03ea7c1734f9083efc67fb86364343aa592c473e89895323e4"
    "fr"
  end
  language "it" do
    sha256 "511f1d23f4c18a44ba121f09d12b2caf98b38fd12a9fc66b44c651c044a115f7"
    "it"
  end
  language "ja" do
    sha256 "3f759a9985ea7e514949048419996ff9229d7c8c25e708a6a7c7ef7e1db673fc"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "54ae17580237bfca661ca4d38870ef65c91816175ebbb1446bfe8abfaf9fb0d3"
    "ko"
  end
  language "nl" do
    sha256 "9afa395ae6a92b796b7b086ecc36672d90e086ac4f473b638d9aafb606c0b7d8"
    "nl"
  end
  language "pt-BR" do
    sha256 "cace2281e663a1f19c4b19f9d6060d3913d72165ec8c8aca87878666142b9341"
    "pt-BR"
  end
  language "ru" do
    sha256 "9ca411f89a6050ce2072b4659af7708835852593c34ce1b80f5fc01de15080d3"
    "ru"
  end
  language "uk" do
    sha256 "88e2f8e5e2e7ac7de38f912c1d85650719acf0cdf00e49fe3e14025292dcbd70"
    "uk"
  end
  language "zh-TW" do
    sha256 "c30a9c3e1d56d422bec363d44123626a7fb6ca76fac6389ecc4c6e6b07aa2417"
    "zh-TW"
  end
  language "zh" do
    sha256 "12ebd97298e528357f614a7856ee0900e872745663d14ca62e3c825ac6f0b6aa"
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
