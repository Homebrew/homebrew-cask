cask "firefox@nightly" do
  version "148.0a1,2025-12-25-20-53-20"

  language "ca" do
    sha256 "f87ef75433779be924cf25858a4a72bcd6cc05a31a2c38de992221199ac97edb"
    "ca"
  end
  language "cs" do
    sha256 "e510b5fc003b8d4b44b6f540a1cc57690667b1669cf22766491e836b5d055648"
    "cs"
  end
  language "de" do
    sha256 "9fd0859302d0f7083da2d65fdba99a677faffc7a6c973c434579bbc97fb931c4"
    "de"
  end
  language "en-CA" do
    sha256 "d4ea45ef08a536f2ddeefe2f7b3f6025901d3c2038fd86b39eb06ab6fd0d21d8"
    "en-CA"
  end
  language "en-GB" do
    sha256 "79dff85a6b1448790a28bda84f8b2083a0768f391f3804304621642c159a0925"
    "en-GB"
  end
  language "en", default: true do
    sha256 "29fe3e3f6a072b8830453b42cf728db256b24083a34bd36b305d7f0eee657037"
    "en-US"
  end
  language "es" do
    sha256 "a126876920e8161fda95e05e78452a384f1840af1fac9fe917614c98c9666c94"
    "es-ES"
  end
  language "fr" do
    sha256 "7b1a978da931ce40e085e2b37f0b58fa05891d2d9fc460c0c097794bf3cec699"
    "fr"
  end
  language "it" do
    sha256 "166810323aef14b58bc4848bacf6b217dc18215001331d28107a46612b70efe0"
    "it"
  end
  language "ja" do
    sha256 "7dc68411d35e7d5957f8481afdacfca73b653d8228a91403de0a11bfb66a0815"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2fd46fa0a7e269dad8756bf6ae647c2dbd533deef0d06a207035780dd77dc934"
    "ko"
  end
  language "nl" do
    sha256 "61b507c8368ffa41009ae3af244ed4f6254aab5bf8647f6c21b67b0519985cb3"
    "nl"
  end
  language "pt-BR" do
    sha256 "0f94dede8678fda07e0399d205ffb3321bb85c2f0574c3e51d2cf99ca9afef09"
    "pt-BR"
  end
  language "ru" do
    sha256 "7e9db824bbcbfe61e298f5e331627d8babbc067309588acbac332b2c84a88010"
    "ru"
  end
  language "uk" do
    sha256 "4f7d71eefedacd5a884f692cb7935070c49efd8ffb68031c222c5719ff3f2f19"
    "uk"
  end
  language "zh-TW" do
    sha256 "e08d0bdf7615ffcc920e36ee6e3537c1bcac37d05ed76423b28c741516e44550"
    "zh-TW"
  end
  language "zh" do
    sha256 "a55ce5ba3e31905f9b9564a696d4c80f45f813917908fe60c9eee203d37ef4e3"
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
