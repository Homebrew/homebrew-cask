cask "firefox@nightly" do
  version "146.0a1,2025-11-04-09-54-17"

  language "ca" do
    sha256 "a9ebc28f91f924d42e750940366e5b1bb6b49c401f171453a9d9948a991c0ef6"
    "ca"
  end
  language "cs" do
    sha256 "3605f8246e07022874c1358630b4311f0f8884eb8189c501e48459d782c774f1"
    "cs"
  end
  language "de" do
    sha256 "866b2d4c055e9a433b30996658d9e388501c8a6da824d7ce165624f72e4c5cc6"
    "de"
  end
  language "en-CA" do
    sha256 "c828fbbedb0a09641ac162f5c8e38a9379dd7cad88f00efe6191cc185f0ae001"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ae7fb9ef0a463c56f03246cb93949e29979d11d0033aca48d1d522c15a3da181"
    "en-GB"
  end
  language "en", default: true do
    sha256 "28cc36d002b72f8b3fc78096fcb597fdebd775d68d04fb2eba933056de9274c7"
    "en-US"
  end
  language "es" do
    sha256 "9628a60e0a2d1dca6ca6c15fa9951d3b74c25536255d24b31c6e846816ca8172"
    "es-ES"
  end
  language "fr" do
    sha256 "aecc58c04f704741167ccb2afbc3b22aa6d9de82ec2ee4fd52006bd84b19cd2b"
    "fr"
  end
  language "it" do
    sha256 "a46b6b89a2bdd71abf2cc5760923c8c92eb82e3689041d3df8452e0e5f5c27ca"
    "it"
  end
  language "ja" do
    sha256 "adc05e2be89024d2a381812172c74ce18854b205b2cf9c1fecd3945193d57d66"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "81645ce5c157ec5f2cb07d27c41d44e859377f6c3576f4e7944e77bf9384f571"
    "ko"
  end
  language "nl" do
    sha256 "1ea0954dddaa3ea9dc6b7c2993ea9d6a5fc6834896a31c0dec8454de2e997757"
    "nl"
  end
  language "pt-BR" do
    sha256 "1bcbc6b21917b35d2673084e1699e8144222b57d133624f7f7177fbf3bc5bd90"
    "pt-BR"
  end
  language "ru" do
    sha256 "30a12854b9c797c5e476135169967c02ced91c81445926c72ede67ad44f94586"
    "ru"
  end
  language "uk" do
    sha256 "c850519590bca18449d2c419aeaa360719b135c800f7c42ef82108eda9159eca"
    "uk"
  end
  language "zh-TW" do
    sha256 "28dce406cd1b53d8a39d88c6adb4f4e46a2eb56bc62b5894da927f004e33bb2c"
    "zh-TW"
  end
  language "zh" do
    sha256 "e2b0bfa38ec42edbdd9e751509cda63e76df37e8f7cd6970b8fadfb2d47943da"
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
