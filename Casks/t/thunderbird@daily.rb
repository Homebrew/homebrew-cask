cask "thunderbird@daily" do
  version "160.0a1,2026-10-22-10-59-20"

  language "cs" do
    sha256 "927719062881f70e5f8e43282ad6abaa236cf3bcefbd6b46107575b315143ee8"
    "cs"
  end
  language "de" do
    sha256 "d1be4d0c1e9e733f429f7b09f0623c4d6e397d9623dd4a051600e9845ce4ffb0"
    "de"
  end
  language "en-GB" do
    sha256 "cf9d14396e5d5135452656b1f7ebe7f091888e2091fd37d5517a58eac1bfabb8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f4cee679316432852abdd40b2596f7e4fb9e91321a64166092026d03f1ab287c"
    "en-US"
  end
  language "fr" do
    sha256 "fc25b2163879fb49a391a3143d8a6f86ac081de8320c9bac7317370e2d6116f4"
    "fr"
  end
  language "gl" do
    sha256 "b7e80e6503ed55310648d393a240d751e2f8321b5d00e88746e190ce5d2c5f2c"
    "gl"
  end
  language "it" do
    sha256 "1b20ed9cdab9824f58fadd1b19dd7d54ffa2656ee4bf975a2bea130048d77e35"
    "it"
  end
  language "ja" do
    sha256 "01559e0a3f7b065b3f7eb4f66601d4deae7937e6b2e81ac0332068b9084c7434"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "263aa7a99ff5b0c25082367e1fdfc91da818af9abcdd92c7933f46c9203ac1b2"
    "nl"
  end
  language "pl" do
    sha256 "63880b3dd95572ae27a9fc4578f4d0e544f9e518f57ed0937835b83a4120004b"
    "pl"
  end
  language "pt" do
    sha256 "5e46d1cdb2a2081ca11869d7c2d0376deab7cdbba89dac38a1f63f073259ffdb"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "29a5729061439351ff644cca1d00b30dc8366d6665ff938b612cbd5235858122"
    "pt-BR"
  end
  language "ru" do
    sha256 "bb7593b001deef17664d337e67ab9a7136e01f352c8259ed28785e2b9d06f2f9"
    "ru"
  end
  language "uk" do
    sha256 "5a6ad32fddae0c61449ffc41fbff975deeca74e770aff2360064978f68d354c8"
    "uk"
  end
  language "zh-TW" do
    sha256 "030ce3d46cc01ff37811016b278e3281cd51cd1d8165379ab01a47e309b9e75a"
    "zh-TW"
  end
  language "zh" do
    sha256 "7e50c84875d9b2fd1d79740902e3502e4ef6758b527b2ae004d192ecfd4d0200"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-comm-central#{"-l10n" if language != "en-US"}/thunderbird-#{version.csv.first}.#{language}.mac.dmg"
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
  depends_on :macos

  app "Thunderbird Daily.app"

  uninstall quit: "org.mozilla.thunderbird-daily"

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
