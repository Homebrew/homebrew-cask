cask "firefox@nightly" do
  version "139.0a1,2025-04-18-21-50-14"

  language "ca" do
    sha256 "92f1a9d244a012b98cc45b298b09e41374fa76da50f344dfbbcd80b0edea3a82"
    "ca"
  end
  language "cs" do
    sha256 "e455c6e2e54111a9190b089099adea0d625bf16086c795ec8eda7c7cbbe7482a"
    "cs"
  end
  language "de" do
    sha256 "f4a5b3b1f0437809c0686ebfe3b4bffffa62da10eb7359c4dfde64ac1436ee65"
    "de"
  end
  language "en-CA" do
    sha256 "1a83dc4390c12c12ec1d8c1f17c32e1778c0eccf2b83104cb699408485151cbf"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a1248db0a477f27874cd859b55d206e93dbcbf4986faa05d25f67c1ccef77c1a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0c30c63ee425c06830ff714bb8b42b15c6b02ca91467b523c5c02fb62e71a3f1"
    "en-US"
  end
  language "es" do
    sha256 "de61ed8f59c5c0e43da187a3accd7cba2ba07b0f88100da2dc389bcc5ff2225c"
    "es-ES"
  end
  language "fr" do
    sha256 "8bd9fa069e11ab9deb9259f8e8e7515b8b603a9e66dcce8ed3981144464f2c9a"
    "fr"
  end
  language "it" do
    sha256 "0346463142d9c22f7e3c029bacca9c8c36107b4fa2c8b3ccf638a1606b95432f"
    "it"
  end
  language "ja" do
    sha256 "12cad22d19e9e3b98a23604d13060ee6d00a72673e6f1b02831a87f76e0646ab"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "18496007401e57729f50f2c83e571509e5cd0de488e21a853679eee188a345eb"
    "ko"
  end
  language "nl" do
    sha256 "ec2864d5c1c602277ebe90a7bc3c96d8433b0f55f83c94486dd4963ea999c117"
    "nl"
  end
  language "pt-BR" do
    sha256 "00382f1887cff89b1bbbe2c2348cbb3d7e200bf4231b6fb3ffec7a1b0c38198b"
    "pt-BR"
  end
  language "ru" do
    sha256 "4b8ef51a4e8928e65d5e439b4d0bb0109c1763557446652f67d748e59d4fa935"
    "ru"
  end
  language "uk" do
    sha256 "b06805f57c514e94fabdf452c3e5449ba5607dc4f26a7eee287761b861c04b14"
    "uk"
  end
  language "zh-TW" do
    sha256 "2aa64c18c34347be41beef1f1f95063ed676f2133ea86da9ce4f077b3f277373"
    "zh-TW"
  end
  language "zh" do
    sha256 "b38780e4641e3e695b14d936d278f39d9c1a055f254f963444381aa7b01616bc"
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
