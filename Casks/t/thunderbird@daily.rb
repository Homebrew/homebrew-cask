cask "thunderbird@daily" do
  version "148.0a1,2025-12-21-10-01-43"

  language "cs" do
    sha256 "b73acc66cfb4dd478a966a305e335859f518aa4dd6ed35574d217b2acc2eb1ef"
    "cs"
  end
  language "de" do
    sha256 "aeb91b4374d0a211c868769486089e05f1cf87a168403c653c0cd1ff49a8af47"
    "de"
  end
  language "en-GB" do
    sha256 "026779013b578e26f6b0a27d70853715296ac8872acf2b87a249a30ab77322a9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9ebbc9441e61cf8c7f5e536b4a57b4c552399b58422602da26084cfa8a07ca38"
    "en-US"
  end
  language "fr" do
    sha256 "f94c19a7352004ac4d0fa81877709fe7f04cd62c87742cb6eb534bdb2a673dc6"
    "fr"
  end
  language "gl" do
    sha256 "26227aa7bec0c85a7d5aba4521c188540a7f19bb5fa63b2789f913bcdc31d881"
    "gl"
  end
  language "it" do
    sha256 "536d030dac2c80f4c37fed8542a51bb72ec3e9317c89acbdda189dd395a8d584"
    "it"
  end
  language "ja" do
    sha256 "bbe9d21738e885ea55da498d444da145bd40766f7c6edf87d2edcbf307e3fc7d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "2116bf2f2724dca9825c25f801b13e42ef3005d2a92e2cb562a6989973f488ef"
    "nl"
  end
  language "pl" do
    sha256 "92342042e65b5212a803ad2ec84b29988aec5529eb22d93d4b3e24746986bf10"
    "pl"
  end
  language "pt" do
    sha256 "6903a23326a8079855499861c0a3845828912c399d9c89552064f18425901acf"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "e625ece6dc2f9e0375f2da21c39f6e7d84a86e599a0f056c9c2c7fff72dd832b"
    "pt-BR"
  end
  language "ru" do
    sha256 "b951ea8f6cf14ab31bab1124d738c7c49ac74271cb855d2afc688d9451159390"
    "ru"
  end
  language "uk" do
    sha256 "5283f3d4ca751a95352a0b8004671ec55322ef3f92340d871ccd81b1534239e5"
    "uk"
  end
  language "zh-TW" do
    sha256 "96f8f3924f203a42ca010fd3953de130952949ccce86bae25b4f5d8dbc1382fc"
    "zh-TW"
  end
  language "zh" do
    sha256 "703d8fd97531de47ce2e89171a35a848a5debb79727a2a9d187935bdb21feb14"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-comm-central#{"-l10n" if language != "en-US"}/thunderbird-#{version.csv.first}.#{language}.mac.dmg",
      verified: "ftp.mozilla.org/"
  name "Mozilla Thunderbird Daily"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/#{language}/download/daily/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/thunderbird_versions.json"
    regex(%r{/(\d+(?:[._-]\d+)+)[^/]*/thunderbird}i)
    strategy :json do |json, regex|
      version = json["LATEST_THUNDERBIRD_NIGHTLY_VERSION"]
      next if version.blank?

      content = Homebrew::Livecheck::Strategy.page_content("https://ftp.mozilla.org/pub/thunderbird/nightly/latest-comm-central/thunderbird-#{version}.en-US.mac.buildhub.json")
      next if content[:content].blank?

      build_json = Homebrew::Livecheck::Strategy::Json.parse_json(content[:content])
      build = build_json.dig("download", "url")&.[](regex, 1)
      next if build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true

  app "Thunderbird Daily.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird*.sfl*",
        "~/Library/Caches/Mozilla/updates/Applications/Thunderbird*",
        "~/Library/Caches/Thunderbird",
        "~/Library/Preferences/org.mozilla.thunderbird*.plist",
        "~/Library/Saved Application State/org.mozilla.thunderbird*.savedState",
        "~/Library/Thunderbird",
      ],
      rmdir: "~/Library/Caches/Mozilla"
end
