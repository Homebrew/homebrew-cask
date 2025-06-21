cask "firefox@nightly" do
  version "141.0a1,2025-06-21-09-17-41"

  language "ca" do
    sha256 "f626739f9fe7ae9f9b6c9fcb2c682fe394c2a43938d7eac734645aaf673f9253"
    "ca"
  end
  language "cs" do
    sha256 "2a16a3e39ed07c806a9414cdc21c4cbc3c2ebee5ad7ec3e5cd34eb85420bc349"
    "cs"
  end
  language "de" do
    sha256 "70624c22f9f886b093bcaf769fd1a9135d127462feaf0968e0328a1461d62d53"
    "de"
  end
  language "en-CA" do
    sha256 "3e21a4fb541e3c58db942a2ed971267685ba04dcf74f8b38e550f909d2cc246c"
    "en-CA"
  end
  language "en-GB" do
    sha256 "82d8b6c985a1ed6da23a6b4c09662fe04f0935d85a84d5f9590ef75d6c547901"
    "en-GB"
  end
  language "en", default: true do
    sha256 "25df26c0f5fa0549bb43e1c4734c2ecf6b9c4d31c44263c361794e7af9e0a42c"
    "en-US"
  end
  language "es" do
    sha256 "5417699d9feb8821feb22812f20f1dc9abc606a78aebfece6b1f55048ffa9116"
    "es-ES"
  end
  language "fr" do
    sha256 "682826817e7293cb754c9613f2b00010afbf15898e4d8f281e93ac375f04dddf"
    "fr"
  end
  language "it" do
    sha256 "d179551693bb7ed6448247e84326a2456b4fe92c1dec7df371ee9ca5b808e6b3"
    "it"
  end
  language "ja" do
    sha256 "409725aaa9365ed4d780fa4eb7b07f2ac15e76a53d1c7b7cabaddd85a83efc8e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "828219d29e84f609972886c4ad031ba9bde5a0457c19ef836ab1895f145e35ae"
    "ko"
  end
  language "nl" do
    sha256 "ec2e8bf0b4b54f272aaa587a96fd736de2ea9fa0139e1ef6ba837a2c1de849bc"
    "nl"
  end
  language "pt-BR" do
    sha256 "c0e60957d090e197d6e149985aad7ec85e03fb4279d3396fe209f17c60304d6e"
    "pt-BR"
  end
  language "ru" do
    sha256 "191c55c662f08d0545289d071eb89c144a1217dbb1d9fe8edd4830f4b8600385"
    "ru"
  end
  language "uk" do
    sha256 "7254031e335fd33967efa8443f4ca0eb3ae9638c9d452c2fbd9d3a9a098cc9dd"
    "uk"
  end
  language "zh-TW" do
    sha256 "7d2ac3b6af2394a190bb8030dfda62f52d62b46adcec6ef08fba8a93aa8857c7"
    "zh-TW"
  end
  language "zh" do
    sha256 "447054c349a6a71c9973becdf07b3391fa2de16a1f80fbd429fde511dc190bc3"
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
