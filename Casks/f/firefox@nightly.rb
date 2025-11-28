cask "firefox@nightly" do
  version "147.0a1,2025-11-27-21-35-32"

  language "ca" do
    sha256 "60dabc09134e579a7de4ce6c9e8a72e160be33546e8a4323fa1871697482a3c6"
    "ca"
  end
  language "cs" do
    sha256 "50e98066b0748d1a5e0440f398fce3c4d7158639d842768d969a63f5b4bc2768"
    "cs"
  end
  language "de" do
    sha256 "9be724d2403710b0164e3850a12774e76f2e984c81f7fb6a7d441953e7608819"
    "de"
  end
  language "en-CA" do
    sha256 "e7e76eb64440c40b5d8a472a8d3b280950442bff0876750eb651733a7f27b7e7"
    "en-CA"
  end
  language "en-GB" do
    sha256 "9601989feefa9edaf600a62317d6277526e3250b5d7cc2db8b0c1ca26215b4c4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f900d1f33341beda454ec9675aded78aecb936c1461d52f5382d1ed7df605fd7"
    "en-US"
  end
  language "es" do
    sha256 "f0f425cc278c91b54f78268677bb526a3944d8e46b4ce4c52d3727ff0adf621b"
    "es-ES"
  end
  language "fr" do
    sha256 "6fbbabb3bdeeb08bc2ccf3c4ef418d94c83922f157f928d0939ed965f2031392"
    "fr"
  end
  language "it" do
    sha256 "d11b86cd50d6fd37814cf127740665ee1500f2a9ad5f3d754683fca91874c1c9"
    "it"
  end
  language "ja" do
    sha256 "c803c67ba2a45c02f4b64924af996015ea534ce6f9136ced28558081a0572def"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f6498af8dcc2a36d1f9ac178625b5885e95d4eff7466e56a51e27a01e96d1d56"
    "ko"
  end
  language "nl" do
    sha256 "5d326d140a61176d1406cf5698521d9e60b80bbe17d00874b3f2ce2c9479b6e7"
    "nl"
  end
  language "pt-BR" do
    sha256 "26713e07907a4671624031c8094581e072a7454cf4f817042c98b9fdfaebd446"
    "pt-BR"
  end
  language "ru" do
    sha256 "2d6233a094e4b21991b27fc4154de245011db52a65444c1416c14641504b4e56"
    "ru"
  end
  language "uk" do
    sha256 "ce0366cd70ff4ef4659bc541d04095dff8e9121fa5d2f89bdc9f7f67946891c3"
    "uk"
  end
  language "zh-TW" do
    sha256 "41394b15937db7f93f4fa313c3ba3f5fde2b8f1d4ea8ad1c233a3ca6a1d35df5"
    "zh-TW"
  end
  language "zh" do
    sha256 "979da79997c4c853436c8104660a0f163fd7fad9a8ab5fa86a8d2912f69f6104"
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
