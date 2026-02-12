cask "firefox@nightly" do
  version "149.0a1,2026-02-12-09-52-31"

  language "ca" do
    sha256 "54e8cb5a719950226d6ec2cdb47e6c139e0b8a6515caaf48037a03c1b0cddb45"
    "ca"
  end
  language "cs" do
    sha256 "3750c4a47ddb000500ae7155a9faa631b6522fc1b511c31829eac6928df6c999"
    "cs"
  end
  language "de" do
    sha256 "95b988f97d624ece7f67a196ea61afb2115be54bcadbed4c963b1f50f35970e7"
    "de"
  end
  language "en-CA" do
    sha256 "514835c3f4d3bafe743338e45cc91ace863588e186acb4f083be1da6d9e01310"
    "en-CA"
  end
  language "en-GB" do
    sha256 "02d9e38b838823572ae1802f9822604d6e0dd8ce1ff4e0f8040906aa8ad17651"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6772f83fd03e0a2b4811d1cb2bb41f682be1669df69b1d971ef35afae539a65d"
    "en-US"
  end
  language "es" do
    sha256 "91668a3a985b3a8be6122e9e7d6c23ba9bd7d3ad2d6c246c7c8e774ad294bbc9"
    "es-ES"
  end
  language "fr" do
    sha256 "4aaf1ec37d3ee5df80d6ce76527a40e4f95760b576702d2f0c76a6a6623b79f6"
    "fr"
  end
  language "it" do
    sha256 "bde90eee266f53c863de95e425dd75a6355803578b4486b66452726621203baa"
    "it"
  end
  language "ja" do
    sha256 "3a36b16f23256132fcadea0482c8282f5863729915ade4580202fcc6452eec02"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "cf9948d7a8e37a3ea45201d680282d9f49e97bd255fe00b37c05cc935119265b"
    "ko"
  end
  language "nl" do
    sha256 "d0d3e38fbffb217b9b9d157a805b02f967ded7c4d8ef169c5636e2502b0a9786"
    "nl"
  end
  language "pt-BR" do
    sha256 "b9181d4b3c5c56b10fd3463a54684f3d5be6cc65ebaaab1fcb8ba10a22c0b3e1"
    "pt-BR"
  end
  language "ru" do
    sha256 "ac5b108579659bdf4f087f7a16f07367b1ccc84aabc9ed0a24de65fffa2001a9"
    "ru"
  end
  language "uk" do
    sha256 "02f61fa5345cc2d5ca348edf1da423f9a9a20e398ab638957fa21c0f16126ab8"
    "uk"
  end
  language "zh-TW" do
    sha256 "65cd3ca65388ea03aaaac3150ddc3fa363a1b2f7c2b80f95322c650ab638bc51"
    "zh-TW"
  end
  language "zh" do
    sha256 "e2ec7499ab8d2f801724926d0b3b1e4ace7c7493637ce16e2792d9089cfa3610"
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
