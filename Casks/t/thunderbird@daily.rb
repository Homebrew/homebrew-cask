cask "thunderbird@daily" do
  version "149.0a1,2026-02-09-10-15-54"

  language "cs" do
    sha256 "cb6857e5172d520d05d6464344a0f0d1374aaa5938f7fc1276e994cfd62bd748"
    "cs"
  end
  language "de" do
    sha256 "bd6eed3dad24168454383528ca0b4bbe1fca13a8edee4ece3aa636555d03ced1"
    "de"
  end
  language "en-GB" do
    sha256 "337798f9da46c2cb02e2262d949dbe366bc8a0a78a363ed4c8f7de0f996efc11"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ed41282cf4baac467c15d2003a781ce72e5413fbb209805942c082164f263cca"
    "en-US"
  end
  language "fr" do
    sha256 "475385b0bc01a6926d3d8711a98308f7e790b6e5d2880baca22387ca1c8acb9e"
    "fr"
  end
  language "gl" do
    sha256 "152ef8a8ab0cde4c919126a8fb8bac208ee65ea18cf0b51b598b17d6585b1ca1"
    "gl"
  end
  language "it" do
    sha256 "d1e4972b16d75282f99016deee58ef5066badf7a5ad737c1006140b370c2826c"
    "it"
  end
  language "ja" do
    sha256 "796c60ea3f4fc771945c6b00d66675217757215065f75c5343b39cc8d25a733e"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "096863325a72f125e8ada828f9d3ee01664155fb193894897b1aa468bd67602e"
    "nl"
  end
  language "pl" do
    sha256 "93fdc1ae449c6ad85ff12b0327ce834acab2a59a06e4b0caa256e82abe8969e8"
    "pl"
  end
  language "pt" do
    sha256 "1e7af09980f4b910fa6646a938b6d6548aa9768fe28ec63159c5c5cd32438bf2"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "6c55e3da813cc971e62a212770e2cf09788485bb16506db1553213632be5f932"
    "pt-BR"
  end
  language "ru" do
    sha256 "2e63671d84700dec0c34004a07c21d1910b56d1adea4e5fed123aa2d2654f44b"
    "ru"
  end
  language "uk" do
    sha256 "34e7128c88a1e223dd7047e258f53533eb6baba284e058f775b34e1f6582f502"
    "uk"
  end
  language "zh-TW" do
    sha256 "3c248afb45b9e309af24a79f36f8a3b36439290fa12e44b3a72f873489bbe94b"
    "zh-TW"
  end
  language "zh" do
    sha256 "1c60726f35bc842eeb67b552a4f18d64c956f4ec10f01af2d6985553ea8be77d"
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
