cask "firefox@nightly" do
  version "155.0a1,2026-07-30-21-43-47"

  language "ca" do
    sha256 "df7fb2660dfe5dcd54795552309645c622f2e0c2c7ce13b21caff6e231c6950a"
    "ca"
  end
  language "cs" do
    sha256 "defd8a72b0b8ec9725de5ef8d9774735bddb1ffb8ddc0653a3eea11819da1dae"
    "cs"
  end
  language "de" do
    sha256 "e7ef8b303b6fe0b5e2fd58b827dfb144fae1bf9a5a1206759af48d191176bd8a"
    "de"
  end
  language "en-CA" do
    sha256 "8451f73e08ab1c539c0965763b9cbeab0e9842d6fa936a26ff3db00d7fd07f1e"
    "en-CA"
  end
  language "en-GB" do
    sha256 "bc6c46407e6164bd3a4f74c9a389f44c385033d76b73c325fbb2920118f894f4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8dc3ba7bdeb144f4b255e80ad6f1a91d362d87f1dbc43c9394414c4e1f4e7fb8"
    "en-US"
  end
  language "es" do
    sha256 "e2dead3eb98ba53b9c036cf09b3ce143041909a869898f3ce6562bb720436cb4"
    "es-ES"
  end
  language "fr" do
    sha256 "a9c5afd8f880349337bffc370e7f58bbd7aa0cb009b8e41ba19e21eca1b52b00"
    "fr"
  end
  language "it" do
    sha256 "96c9ea95866b4b04a0212a31d24e37e34a75a6ea61e9fb6b7abad2cf6cd892a7"
    "it"
  end
  language "ja" do
    sha256 "0578bea92ccc47070e48009433d9ce2e9eb193ed739b3493b06ad60501ef26f3"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "ce7a496fb1ac090e924f6d3bed68d4701ac815c50fd1f207aedb33d161689cd3"
    "ko"
  end
  language "nl" do
    sha256 "c0bd495a1a56c377a86d08977e63a09fc112e060ab6720aa6c3fec1e6012b7b7"
    "nl"
  end
  language "pt-BR" do
    sha256 "25cffee902fcb44e8e98be82c8c2d6cd9da53791f0e0eddac869d429109565de"
    "pt-BR"
  end
  language "ru" do
    sha256 "371d5607e1a7e3f681fda08a2ef988b528e68532c83d38034d375d8b3e8921c4"
    "ru"
  end
  language "uk" do
    sha256 "a7001cff5d5c9e9a699881a6994b58060f4c4243f888aef1430881a6fac6060d"
    "uk"
  end
  language "zh-TW" do
    sha256 "beccd1cb13530bb7e4c4bd4d6e0338cf608e22a8af6d12adcf403985ec96affa"
    "zh-TW"
  end
  language "zh" do
    sha256 "75fefee00e2a574e7573388297b658983d53034d138f600ea5b59eab8e82ce39"
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
        "~/Library/Preferences/org.mozilla.nightly.plist",
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
