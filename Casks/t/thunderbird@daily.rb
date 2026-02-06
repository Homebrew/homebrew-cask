cask "thunderbird@daily" do
  version "149.0a1,2026-02-06-09-03-09"

  language "cs" do
    sha256 "8be93be30aae8a84e49bf426c7d97b72ff2108de189a49bd29df3b7ea5e7f5d0"
    "cs"
  end
  language "de" do
    sha256 "496e540b3c9de9d474b9de9a7c67bfe506f9c416f6faa78c87959512afb906ff"
    "de"
  end
  language "en-GB" do
    sha256 "1983eb72df2cbd59e4ba95e1803c3e58921789ca0f4405dacefbc9a92e6b0a87"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9aa37695b6623d2c38b65cc4c94a942cc4bad603e487870fe4adf35ebb3033e8"
    "en-US"
  end
  language "fr" do
    sha256 "035b67f5fed19d9da6083bd4d44b375f9f8f0540fcca85c573f3d74fde407e9d"
    "fr"
  end
  language "gl" do
    sha256 "fc4ff247bd506fc397b37efcb52c2324f2c07603100acd2cf49e5ae4ae331720"
    "gl"
  end
  language "it" do
    sha256 "d0d82aa16e522c10d1447ff3af50756bf4e9a5ef81cf6aaa9d3cbf4c5fb9a0c5"
    "it"
  end
  language "ja" do
    sha256 "447c8929bf1c7ced197d6fa6b32e6f7499f545952c420b2c025c3a3ee814d959"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "0bc4abbd4d237995be5e44d87abf08119e38073348247621e0bb03d6556e1625"
    "nl"
  end
  language "pl" do
    sha256 "f5eaabb8640a52a744048381bea5d7e279bf564ab08541102a16b19cb1f848d3"
    "pl"
  end
  language "pt" do
    sha256 "115b0cc69dbe88e2a6493d337ac1122faa65a6bbeaefe8f3c6b93472b704c3a8"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "c3c61f44901d4f8f49fb9edb62c2ac253a626bb1e33a92d1cdffd1dd3a62181a"
    "pt-BR"
  end
  language "ru" do
    sha256 "cfdd02b4d7bfe14cb7c0ee0075179e4db7e480b9e287d4ee0150aa8985b9ce92"
    "ru"
  end
  language "uk" do
    sha256 "f45cd9b6dc9840e6ea9723f7e0f5a9e1b060f54ceb63b006d3af404cab6d705b"
    "uk"
  end
  language "zh-TW" do
    sha256 "130afc863b225412d01918f3ba70d93a2bc3e6ab50070fa52a97f734c94019e7"
    "zh-TW"
  end
  language "zh" do
    sha256 "295aa6bf3289206d180748066fb0d4ee0d9c01609bde097ea3ce843ab718f372"
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
