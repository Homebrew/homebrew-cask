cask "firefox@nightly" do
  version "146.0a1,2025-11-07-21-23-09"

  language "ca" do
    sha256 "b0db7ec0edaec8a264a58e8554b70f463cdd1dd25f4aeb532903d4bfee3bcfff"
    "ca"
  end
  language "cs" do
    sha256 "553a768cdfdd7a517496752af5c80a0a17a868bcfc3661bae32ad779b371dcde"
    "cs"
  end
  language "de" do
    sha256 "ea4a71f081fd6be146e8cbacc170d3f20551c3c7314a628158643c391db169e9"
    "de"
  end
  language "en-CA" do
    sha256 "569d70c199fc6e9e02ad4c5e3c219f35c3446a622a96b7da7a8f124312c09624"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c14769307ed088b8ff736a881ac59d111e5b41819997e684a749e2b31e68cd04"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9619236973f14fcd0d7978fbc3c52d1ba5b2a08a2fd9c11b33b3e57ca76ac1d9"
    "en-US"
  end
  language "es" do
    sha256 "a9257c9b7ee09cfd26d1fed353db9a98f9d28d20ce815f8c03b089b094a315f2"
    "es-ES"
  end
  language "fr" do
    sha256 "61a74982caf1aef603b38250ec9ddee276bb78503fa83536cdfce53dbb829100"
    "fr"
  end
  language "it" do
    sha256 "ba4df340fdc9ed1db2b48366fc76ba7e47ba8cb73f871523bb57c731c9791201"
    "it"
  end
  language "ja" do
    sha256 "8b06a7bc1ecb32786c1f21f8922f2a5a595c291eb00a8ee9521d1768f68ca640"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "913b730b2722b3adefd0e6590ead1a6076624aed338d5091b31e81fb62111dc5"
    "ko"
  end
  language "nl" do
    sha256 "80714887ac9d73b502b02b9bac2797e583b60736c76dd0af22f3c688af799f7d"
    "nl"
  end
  language "pt-BR" do
    sha256 "e9fcc27028cb6821aabb26455ad9acb369cd7c567097d35fd505599d0574e7ef"
    "pt-BR"
  end
  language "ru" do
    sha256 "f65070c0a4b6a76449ace9edb10b5c7ea950da2b86e5108e503f0ea4ffcfaa5e"
    "ru"
  end
  language "uk" do
    sha256 "574569ac9877a41fe0cfd048cddf7570af43c8148214639f37b92ed491505104"
    "uk"
  end
  language "zh-TW" do
    sha256 "08a62d8401c4b0a1c3593e97476f083202b435fd43279bdad739f41933b7b665"
    "zh-TW"
  end
  language "zh" do
    sha256 "3cb84026f17ced00c78835d7737dd2253e21e10d6b6e11e703d02d7afa80781b"
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
