cask "thunderbird@daily" do
  version "142.0a1,2025-07-13-06-52-21"

  language "cs" do
    sha256 "0b926328552d814faf3b2c10385309fce75a88d13437cf2c18e088c41152dc01"
    "cs"
  end
  language "de" do
    sha256 "f45fef01ff4d643a21028da8c511e37e209ff5cad43b44df5ca1cc5df90c99a7"
    "de"
  end
  language "en-GB" do
    sha256 "3168c173bd2f2eda850ed5bbda2257e2cfbc0114a79237d0ffd2ff8537c5edb3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "50d1c760ce5dde78a7261911097215cdbd0c13e81be43f60792711ce2eaf5316"
    "en-US"
  end
  language "fr" do
    sha256 "a3083f1a5c58850ded426f0c208dd91ce479b51ea272379d0e13b4b4c34b375c"
    "fr"
  end
  language "gl" do
    sha256 "ba6ac9ee85d4a1b26655d55f1247aa906724e890331656671f153f3fc56afb9e"
    "gl"
  end
  language "it" do
    sha256 "4c39d7f91180e7b9362e7513c5de4f2116a60167e0cd30fbce4aaa4b0a1d6581"
    "it"
  end
  language "ja" do
    sha256 "abd3f50b3f13942869e58b0a67f692999f4688aca4e1387c23d6da8488530215"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "5fb26d503dcdb9c6d0b3b97e2dd3b9ad4b043d3c5dd1387bd61ee89cb73e1041"
    "nl"
  end
  language "pl" do
    sha256 "4e8f0b3c22af73f7ded8b8ebf13d2c6894d88c71639256a8bdf1d39cbd391a4e"
    "pl"
  end
  language "pt" do
    sha256 "6c0a60897bfded1ec5144cbc1b896141532f8f913f204be4e3cb7fe322cfedee"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "ba08dba7426f89b34b0a5c04df03c4cf27bf20529191317fb9c19b3e197759bd"
    "pt-BR"
  end
  language "ru" do
    sha256 "6937ab20ac4938b606e582cbb4033b34e3f5126105b2bc77340ba17031355983"
    "ru"
  end
  language "uk" do
    sha256 "2542a51e96febb4eba98b3a5749c61487eca36cbff8827e3eb387cd70ada112c"
    "uk"
  end
  language "zh-TW" do
    sha256 "1d00017f735a8da66ea005a9d135dba23d559c089be0d5eeae914c3a38dda08f"
    "zh-TW"
  end
  language "zh" do
    sha256 "d2167731f8308d30e69c003b152ebff082fde24a2b47bbeaa4468c9dd0d922bb"
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
  depends_on macos: ">= :catalina"

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
