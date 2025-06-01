cask "firefox@nightly" do
  version "141.0a1,2025-06-01-08-41-41"

  language "ca" do
    sha256 "61b7ccb0a843e5562571941204072fe5bf6b552aa88b0d2a0f419a58cfdeb00e"
    "ca"
  end
  language "cs" do
    sha256 "6596f007a6720f601c78a6a48dcc3c8ab4361cb64f88cffba89a6b536a32bd8c"
    "cs"
  end
  language "de" do
    sha256 "ed2c663e4b23653127f69c313c7de9c961fc92967bb867f6349b46dc46a3a63f"
    "de"
  end
  language "en-CA" do
    sha256 "538fbc9efc8d3a9340daf90e66eb28a43381398c04bbff9507ca41f962eee000"
    "en-CA"
  end
  language "en-GB" do
    sha256 "77eaf158cf9ec60d047c0a2fce2f778540692199e940293ce5c82a1d742c13b6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "13afd18cd99ba1b438c3b994ac08560d8f42cbcde07a0db1f596a5c032f6318f"
    "en-US"
  end
  language "es" do
    sha256 "411b3544db03824bac2685f4c15146aaafc3f49588fc9f8d973b58c314447f22"
    "es-ES"
  end
  language "fr" do
    sha256 "b59f6d69f59b0ea32fef7a31ff013148b1b3cd2ad73679398a36511f9cbf5bc4"
    "fr"
  end
  language "it" do
    sha256 "77959f1e4ce507c84120e150e1ac8a55e005e56ff4b133a4ee7296aeee861444"
    "it"
  end
  language "ja" do
    sha256 "1216ecbec97678718ab579b7f278ec57f12b232bd71494bb51f636973b8749ae"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "7d33ec2171c347f2b3a6b58fba9ed5d30a017ae54293f964df162f8940e50955"
    "ko"
  end
  language "nl" do
    sha256 "2a5f9558580b94401b4f24f4982ebf16169925f6de2bec8daf0f8e04101ed565"
    "nl"
  end
  language "pt-BR" do
    sha256 "b517fe4de79207dff213e4202a56cbc85e30a8ac8ff1b589348ec202ec4bd587"
    "pt-BR"
  end
  language "ru" do
    sha256 "7e9c543ad24e62f74417ad26cbeca1cf85b947910679aa5445b51ff93f85d284"
    "ru"
  end
  language "uk" do
    sha256 "c5216cb00ed6178ad155555e49dd0fd5b10be1e8e5089d17353fd5b781b8b0df"
    "uk"
  end
  language "zh-TW" do
    sha256 "9740eba9e9d5f9b0ff195ca9a415470e302445218d3206bff646e1e8c03285a6"
    "zh-TW"
  end
  language "zh" do
    sha256 "5ed076487c3aa5837813c7634017aecd07b26d7c9f9923b4cfc57b6ce916db0c"
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
