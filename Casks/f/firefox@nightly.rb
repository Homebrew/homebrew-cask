cask "firefox@nightly" do
  version "152.0a1,2026-05-15-21-18-51"

  language "ca" do
    sha256 "4970b32bd3d42c9da72aab2c11da62451c472ea925c9c2628b7eaa81a34e9456"
    "ca"
  end
  language "cs" do
    sha256 "96f6ec14cbda89f825a1179303a45aaf17ed1c2bf69fdbfb5a9db89acc1d4d99"
    "cs"
  end
  language "de" do
    sha256 "de7427e03de017cf992e806d4014364c6227d302d662d5e5ee424cdc2b4f62b5"
    "de"
  end
  language "en-CA" do
    sha256 "d404850f71d5f4999ebefcb7b77ce22529d1a603cc4c627ef91081eab5fab136"
    "en-CA"
  end
  language "en-GB" do
    sha256 "2280c057a8a7fa26da29a01d74f54941a811cda0aa7607a180c419e0d040c201"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b2c6a250cf4b7a93961e93567140d473936399ccfd3c2c8a636872d52b5a4f28"
    "en-US"
  end
  language "es" do
    sha256 "b1b1fcf9fb85ddfa76bf2125052e9c2714fb65930dac0be478d0f0f414388cad"
    "es-ES"
  end
  language "fr" do
    sha256 "4b699b545dc9d567a30128931492559845b6ee23cf1fde94f98549dc436ac658"
    "fr"
  end
  language "it" do
    sha256 "7496e73ac02bb6463666189c0ad4151b6b08159ab5136b994b82f7bda3f9df35"
    "it"
  end
  language "ja" do
    sha256 "5df4e514dd77f1e30f16ad704ef1113ba30fe830c0d3f4b0f0fd5303016b4139"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "53bb0dd0545366e19d94eb489b11e827b21d5d640a85810b80d3f7ed85413a43"
    "ko"
  end
  language "nl" do
    sha256 "193adc18ec077f820f046ded7058872e57999e38c3b7eccdfa80af2e0f250283"
    "nl"
  end
  language "pt-BR" do
    sha256 "6fc56e358dd1e190fc12843bf34c75e1e43edc86d34657108d3252706f16cc59"
    "pt-BR"
  end
  language "ru" do
    sha256 "00596c9147791daaa4ac3b782d288171131425fd8885f19de6ba02b28bab12ec"
    "ru"
  end
  language "uk" do
    sha256 "34579f80a0443c2ca05290acd623573797905db477ba5b66831aa27c28a6180e"
    "uk"
  end
  language "zh-TW" do
    sha256 "4a3a552b9edce64284a1dc7ebe261e4b0aa3d4b6ecf62d95ef5027464f5ea6f9"
    "zh-TW"
  end
  language "zh" do
    sha256 "516ec963099dcb3f4d4831cf7ccc6bdd1adc1be1bd6332c89a5dd209cf3faa11"
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
