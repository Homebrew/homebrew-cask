cask "firefox@nightly" do
  version "163.0a1,2026-11-27-09-51-22"

  language "ca" do
    sha256 "23d9a7d838b17ea67ec13e546e03a53e165c77b48a522e1c2afe693bb488f5b9"
    "ca"
  end
  language "cs" do
    sha256 "375d18e83e7f9328c87a1a53eb385414cb43d3248b738297c62d92e06c123ef9"
    "cs"
  end
  language "de" do
    sha256 "5d020c9950c5f8a40dd7d3f26976da33d2d5b97d6bc878252a134caeef03a7b6"
    "de"
  end
  language "en-CA" do
    sha256 "497e6890c30b7ad25380056ee8100f4e6be50a3e81313a32e96f398c4b9f8166"
    "en-CA"
  end
  language "en-GB" do
    sha256 "b10a432f93d6644212e5d5cabb396213a52217aefa2d76f2987119aa4be3155a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9c14464724dccf43af341a55c14f1f5fb74c9ad77badb5e31551d2b34317f7c3"
    "en-US"
  end
  language "es" do
    sha256 "4e59d4aea668f673085e57b555855f810058e054053eca3e28e0a493749857a2"
    "es-ES"
  end
  language "fr" do
    sha256 "6de392f59f2690e3245867837c2118364d6b9c981feb696a6444e7e4024c492b"
    "fr"
  end
  language "it" do
    sha256 "48b84d403a85e6c0e97c9c6a07457dbaf2aa2b36fbcf751b0ff453b769ebd5d2"
    "it"
  end
  language "ja" do
    sha256 "5615f1d012e93f2bef5253ee20da1ab817132dceca70f6493f2783578307cb6b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "a6c0bcadeb23922facd75e93bea080d7800b795182e8de90183443368d6c37a1"
    "ko"
  end
  language "nl" do
    sha256 "70dd2481b6bdcc1fcd8993c83da386e4a85b4836cda58c6aa130a97e88f1564e"
    "nl"
  end
  language "pt-BR" do
    sha256 "f81619f416653a91d968aef88b43bee06e399003afda3ecbb88f1ddc7e826992"
    "pt-BR"
  end
  language "ru" do
    sha256 "aead5a2d1c0eb24c7930ac6b94070b6843ff5d2397198537ab8515881403990a"
    "ru"
  end
  language "uk" do
    sha256 "a642a3d7a60ce00d576abeb4991944f9134e460ca51e67aaef91c48ab9b4711a"
    "uk"
  end
  language "zh-TW" do
    sha256 "2b01f434b1591dc46e2959607606f546e31e5268abde0698becb64177fe6fc5e"
    "zh-TW"
  end
  language "zh" do
    sha256 "07beaf978018bc846c2674b7a4991da802a753e9e025ea50fe1ad895cf06b30c"
    "zh-CN"
  end

  year = version.csv.second.split("-").first
  month = version.csv.second.split("-").second
  locale_suffix = "-l10n" if language != "en-US"
  url "https://ftp.mozilla.org/pub/firefox/nightly/#{year}/#{month}/#{version.csv.second}-mozilla-central#{locale_suffix}/firefox-#{version.csv.first}.#{language}.mac.dmg"
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
