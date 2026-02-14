cask "firefox@nightly" do
  version "149.0a1,2026-02-14-17-33-16"

  language "ca" do
    sha256 "ea227e8818edaec4b78c5a914dd6bec5b13252a7c56d972868515b7528274daf"
    "ca"
  end
  language "cs" do
    sha256 "49a764c7b711a9fae4314490d5ba69da6917c22f96e6221d45fbdce8eb6240bc"
    "cs"
  end
  language "de" do
    sha256 "b47470775875f8482bf62fe7e5435e5723631d38e5834f243b48c81b637af526"
    "de"
  end
  language "en-CA" do
    sha256 "74537a2bf2e9bd4377c691c1affacc8eea21506a6432dfe1c12e3a06d8d26abf"
    "en-CA"
  end
  language "en-GB" do
    sha256 "1f879c6f7e404f2c90ee3b7cd2a9233563446c42be2a80417d986a0735d932a1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1f79655a7131c6d34853263b7f8a6e16cd2e8e905c9ccd2036978eb97eb0d939"
    "en-US"
  end
  language "es" do
    sha256 "198d000e2defbb898231b64ae00b0e9aeec54dcb13bb4d52aadd027949c41743"
    "es-ES"
  end
  language "fr" do
    sha256 "4a28732b8156f784bb0e8b8b11e7ce01f95afaded07f9cea357284070d0cfb0e"
    "fr"
  end
  language "it" do
    sha256 "0b75f0662a3992ac797a3fe66304524fe23c193b132bb8045785cd2865f7cedc"
    "it"
  end
  language "ja" do
    sha256 "d8f8bf76a82f6d5cca34a5b3b8a5f7aab8984b8a7d22c9c368200636a9ae4d02"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "495a4ebc88fb1aa9b5b67faaab025203cb6522167b4eaf573b126dec150230c2"
    "ko"
  end
  language "nl" do
    sha256 "48b71121741ab9fc2e30c47d4cb834f4acc14c9593c09caf985f2393701dde69"
    "nl"
  end
  language "pt-BR" do
    sha256 "dc4f97d5179f8ac7acfa5ced9b9aa3cc8f2a190cf98fac020f7d3f7401af0ffc"
    "pt-BR"
  end
  language "ru" do
    sha256 "1e5af3d6b02d45ef95c7d85549eb19b738d3a1aa3b4cdc6eaff0b51f1d026cd3"
    "ru"
  end
  language "uk" do
    sha256 "6a5c427637be4a43acdfa041f39b1f3f04e8b72dd87996a0b208ed5ee091f9af"
    "uk"
  end
  language "zh-TW" do
    sha256 "0a770f2fd9901f0b9d902f58a4c8e77768bc2af5046a2815a867cb4141c2ccaf"
    "zh-TW"
  end
  language "zh" do
    sha256 "9173b8fe1e93cd6d632f437e0132debb23e40d28fab03336202cfe60fed2f659"
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
