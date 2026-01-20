cask "firefox@nightly" do
  version "149.0a1,2026-01-19-20-29-26"

  language "ca" do
    sha256 "3b80adc637afcb5d3b1869adf30b01f9eec8f4d279f01554c0d8787f228c352a"
    "ca"
  end
  language "cs" do
    sha256 "9fa7dbb47e0d14b6c0c8e45fefcf54e888a374179fe1b08737ccd1f735d05ccd"
    "cs"
  end
  language "de" do
    sha256 "4820031552a66c7c7c9fb24a0703fc5977dc74b4cda45a65a615ec9deeba1a80"
    "de"
  end
  language "en-CA" do
    sha256 "a968be2cc5d6836dfe5f393ef0676ca428522ec944c13a537d939155d79d08d2"
    "en-CA"
  end
  language "en-GB" do
    sha256 "f2644e4fa5d17a77f15f5d834abe6bb8bfedbfbb43309ced6a900f7448ba4507"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ae21ab9613b34334fe502b98d45b5bd8834190c8fe8dc70a10019eb8bbabca8d"
    "en-US"
  end
  language "es" do
    sha256 "7ac7e4a20e734a186ac7f3197bb02c1bca9524cbb9cfff007deb4bbed8583e3c"
    "es-ES"
  end
  language "fr" do
    sha256 "fa15ef3b32e99843d8396273beb2d6f28215df84803907f55881130192edf6b5"
    "fr"
  end
  language "it" do
    sha256 "9388c399ef66e9f425dc6b2637a7feb3f58298eba6286e6c6208feffb4209b2c"
    "it"
  end
  language "ja" do
    sha256 "2ca73b607804e4f94bf2e51665421cc3dc2677cf31752add19502543fda5ea3f"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "5ded53f1122748357d279c4f38af719d03271b3cba2178419de5527060a5197e"
    "ko"
  end
  language "nl" do
    sha256 "cb65ec3a4d8379b9288d2eae3fe3b1d2e3be5fb256a747eff3bb64993f0f524d"
    "nl"
  end
  language "pt-BR" do
    sha256 "3e381e7f9ced62b801a1c2b8710a2ac4160a8f54db8ab8e1f19c73ddc782cf34"
    "pt-BR"
  end
  language "ru" do
    sha256 "8a17c79461df892854522381f3785d1b8979b2fb069240aa11c9ceb8929ad219"
    "ru"
  end
  language "uk" do
    sha256 "3285e007859268049755e4e0976aa1bed6f0a02e949c59828663f48dd43262db"
    "uk"
  end
  language "zh-TW" do
    sha256 "366d42e1433463ffb425ae6b75b2f45a5511a5116c3ad3f529383f07deb2c050"
    "zh-TW"
  end
  language "zh" do
    sha256 "7e2616d740720c2acf9fb14f4c79e6e5e5d93ae3a1b3d04adc03c36ced74f64b"
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
