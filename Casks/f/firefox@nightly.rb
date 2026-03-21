cask "firefox@nightly" do
  version "150.0a1,2026-03-21-09-47-22"

  language "ca" do
    sha256 "d9786c8f89709dfcf78138581ea65ed99188a499ff2e58a620c2fbc748cbb338"
    "ca"
  end
  language "cs" do
    sha256 "15035d8e76f2b5f21024e1b248c99489a139ae93f8565559d18bacab8a7672d2"
    "cs"
  end
  language "de" do
    sha256 "2e5af1bf9e270d65d604368adc68904546ad64e1a8565593af84520d3977ae53"
    "de"
  end
  language "en-CA" do
    sha256 "4e9c96fcb23d91d8a7712de3a67ca36e9e29786d87b64da2fa29a7369fbaba15"
    "en-CA"
  end
  language "en-GB" do
    sha256 "819678baece9e9131cd295f30c51b66f11cb6d386ff2ff19b5b3db2a1aed00be"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0a7a3b7c5c7caf8fc28fa06597f2a35d2bf46abcfa5207ec6c472223d9d59f83"
    "en-US"
  end
  language "es" do
    sha256 "2da4a9a375f1f7816e622a5a489fe684adf30080a2febda66e933083f662e14c"
    "es-ES"
  end
  language "fr" do
    sha256 "7f63c1418286e5ce43eda23dc2eee1202ea47f60eff2e7b1b8e42811aa90caf0"
    "fr"
  end
  language "it" do
    sha256 "c4812b688467b45f8eb384ab9a7cf01a76dea86e5ff39c4d870d7ad853bef441"
    "it"
  end
  language "ja" do
    sha256 "7c47844a318ce29caf0c1d04600b621f1cb119901ee55485590a014aae6908d7"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "9e23bc09bc42c56240b4a6c589299aa2ef34062d9e5d04954e44f4196bf981a2"
    "ko"
  end
  language "nl" do
    sha256 "37fdcc85bda204d0f68ab1e81758be775bb27f7911e5b1cca71ccfea2bbc58f7"
    "nl"
  end
  language "pt-BR" do
    sha256 "9f5c67bbe10416646256c0fea10a280ee0042b96b175f2ed5a3b83e669f49511"
    "pt-BR"
  end
  language "ru" do
    sha256 "1ff36d06e48fc0137ade57e0c8e99008bacc6edcad4218e7c296e3e8ce3b068e"
    "ru"
  end
  language "uk" do
    sha256 "9d7cb3f5ceb41a377bf1de1aec3a91824552acfec8797bdd1e604a2d3acb4f21"
    "uk"
  end
  language "zh-TW" do
    sha256 "539c0724e5adaba8cf8a8d89247c9af484e938da17fbe41dbedf64e212ae3e96"
    "zh-TW"
  end
  language "zh" do
    sha256 "46230099473de23e535fef8174808117b8691516c5c05dd7ff1c7a443d76b824"
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
