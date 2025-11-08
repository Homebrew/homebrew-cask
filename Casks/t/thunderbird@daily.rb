cask "thunderbird@daily" do
  version "146.0a1,2025-11-08-10-17-01"

  language "cs" do
    sha256 "7bf7f30497908cd91e5dc84c36b28eb094bb17e044618ef89d100214aa09566b"
    "cs"
  end
  language "de" do
    sha256 "8afc412588b14626cbee0904cc1f103380e1d46f0cb35e5429e1496d7b6d6585"
    "de"
  end
  language "en-GB" do
    sha256 "af20cc6dceffff048b2d0998b942d9a75263e33ec924be47f29534e90323ab92"
    "en-GB"
  end
  language "en", default: true do
    sha256 "150462639569c09bc8cdf512823cab549153ad1e56e4d3fd8cd6d76fd4b1f6c8"
    "en-US"
  end
  language "fr" do
    sha256 "7fbc65e2f0a4a217c03fe46080f16137a12925d4512353fa856703eb2c25a927"
    "fr"
  end
  language "gl" do
    sha256 "a0e62840f169775e2fa9385d7f5c1ba58f0af29e8caff44b0549cf91c4d3763f"
    "gl"
  end
  language "it" do
    sha256 "8c72110aa412c05cf903e56117c21e72dd6bf2feb7091629c02317275b97c5ba"
    "it"
  end
  language "ja" do
    sha256 "4d051c4c60fb40596946e5b7f4deb53e05824fbd372dd17b2efc70aca2e4ee4d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "bbe3abe8c21b29fba7e1d718311e29ad17d5379ca6d4e1b2f5755ea5e61df400"
    "nl"
  end
  language "pl" do
    sha256 "0b407300289ec398260b5658de0b6562350a3ec59177d4f61310159ad54fb01f"
    "pl"
  end
  language "pt" do
    sha256 "923cf2c9124bf5eae0d39b9a23b0cf673e02adec306a4e8823da243b2127d0f7"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "266a6081223030e2baf59ac180a32fe8b80131057ea5545dbe5d4185c593c708"
    "pt-BR"
  end
  language "ru" do
    sha256 "2db79643a08459a0afb09f39721d7ff46bfda2028329cdceebac6179be6adda0"
    "ru"
  end
  language "uk" do
    sha256 "bfce65ad4bbe6b054bd6e308f3a637424ee5c54718fa50b7fe0a0b2cca0ba12e"
    "uk"
  end
  language "zh-TW" do
    sha256 "9716604ff94dbe5c3cb79e1a2c1ee60963202d65881cb532637076a3c1ba93a0"
    "zh-TW"
  end
  language "zh" do
    sha256 "2298f4d1115cdd077685761d98bc4b39965f739212e46d4beb110baf2113fc1e"
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
