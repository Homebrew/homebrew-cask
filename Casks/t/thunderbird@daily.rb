cask "thunderbird@daily" do
  version "139.0a1,2025-04-16-09-53-01"

  language "cs" do
    sha256 "de1e21a2fc10912df4cf02a32517afe60c130ff31a1f1ff258ebc4d859763f14"
    "cs"
  end
  language "de" do
    sha256 "64b6e5b8f87629317d46866a6491f4ba317279b414152e5784fa06f735d051ba"
    "de"
  end
  language "en-GB" do
    sha256 "06c81a0cbaf045a7d539eccc6dea8cf196957da41d34666fc0fa4a29f0eb6876"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a82865a3a164c0c3bf288aa5e4451102898d9bad4b1a85709d30dd886221aedd"
    "en-US"
  end
  language "fr" do
    sha256 "c9352d392e26bece55fb73f03c44d036bd9d4e584a609027762a2628ae73bb70"
    "fr"
  end
  language "gl" do
    sha256 "e4299a098293b9745d8c600016ffb3380a47fe738e00e3bd0eedcc54f587e1aa"
    "gl"
  end
  language "it" do
    sha256 "ed699467f9a663c1a3f98f749c0cb486c61b18607974e2a4069ab1b1e4b9bf46"
    "it"
  end
  language "ja" do
    sha256 "84f8adb9824a7911adc0679f15a26bdbc72b179150453f05955e9b88de3c409f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "73ef22b116605f6de8c7f3c2242e9d8ae8675ed12ca6e38964e2f455e33dc691"
    "nl"
  end
  language "pl" do
    sha256 "64c844a6ba918678468e26a423f1f433e4a326e8b98fa7da5f59b8bd059e06ac"
    "pl"
  end
  language "pt" do
    sha256 "3a11a0d42cfc8e87f9d06d5bd29b4a96ead0f5c3c99427d08dd964904157e01f"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "c0dc5150093c3fae9ec49b735fd1f638af1f221f9d37b61b6d2c46797908b8c6"
    "pt-BR"
  end
  language "ru" do
    sha256 "c2697e39fcb3b3af9fac471317e01a47f7618bcff6fa58209019bee1c7cb1358"
    "ru"
  end
  language "uk" do
    sha256 "96ae14850f9ef11704cacaf32c4a8741dd9d0fc449b9e40b2c3ef24401e549eb"
    "uk"
  end
  language "zh-TW" do
    sha256 "da018e771d1207795dffbd927dffd135d8ebb76af421345e82ef314fb178a144"
    "zh-TW"
  end
  language "zh" do
    sha256 "3066b2391c12dac651357676b7c65fd9ff5a07aa8fb1b6fbbb685022e2866c54"
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
