cask "firefox@nightly" do
  version "146.0a1,2025-11-10-09-43-23"

  language "ca" do
    sha256 "dd4e32341a480a1471ad0b7fa3c3d1ac5efd41fdd20205123cfb871a4543d159"
    "ca"
  end
  language "cs" do
    sha256 "424652bad9836ac5793df4433a69e28375f0474dc4ef057470920002c10a929e"
    "cs"
  end
  language "de" do
    sha256 "43f916a3ab5343a2fe2bf64818f032f3187f6f92d00cc285cad43084d6efb094"
    "de"
  end
  language "en-CA" do
    sha256 "8cac6128c589f5188408f176177112181a6938f5e4bae6a0b9fe709477273d90"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a7427641210744cec634cf77b29fac2f036bf03954859d229614cab2c604286c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2df08e3f4de042a6e65c73c647c43725d9dfadec6d5a1bd2e37e22e3ddc94d58"
    "en-US"
  end
  language "es" do
    sha256 "1b4dd23aefffdd32963eb85a5e39e3ac92bb31bb640a533102d162fac260be5e"
    "es-ES"
  end
  language "fr" do
    sha256 "a31f988a422290de76e46bdf7a9aba383e72221911e89b88d70c66239424f16e"
    "fr"
  end
  language "it" do
    sha256 "a32b5d4e851374db21b92b58cd2b7fe1c2acfde61f45c8b8a817e2263af8ec7c"
    "it"
  end
  language "ja" do
    sha256 "28ab775e676c58e310389d961549e27f247ab438548815dac07c3fcc223fc4f0"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "8a538d3bd45e34f60dcc596c9e6c2ebb8cedccb2d4f5c6ed7723be154998eb74"
    "ko"
  end
  language "nl" do
    sha256 "aee78fef68920d2108a9e95d8a128eda2670987d2c7186f43b7d3ef53b1fdf15"
    "nl"
  end
  language "pt-BR" do
    sha256 "1ea269c711dcfdfbafe61b22fcb73a0cae73f17949ebd8f7b11a0d81ac481937"
    "pt-BR"
  end
  language "ru" do
    sha256 "2797a25f505cabbe901dd3ee9e31f497126697471245ff308ade470d547e49bc"
    "ru"
  end
  language "uk" do
    sha256 "8070dc44456b9ac1c7cebd52fbed607aa641b2aba5488d95186002eae1a8ae2f"
    "uk"
  end
  language "zh-TW" do
    sha256 "1f90a25c50fbb5dc3f7899eebb032e12a0f5299186940be529406b83e4bcca44"
    "zh-TW"
  end
  language "zh" do
    sha256 "60bbf49eb5fcd2e9c2e337339f4d690bf50d0e76918c510949dda2d5fec43112"
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
