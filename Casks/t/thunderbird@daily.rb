cask "thunderbird@daily" do
  version "141.0a1,2025-06-10-09-40-17"

  language "cs" do
    sha256 "982e42a470e708a6b94ec7eb4e8870e2acd4acfc432b711603bcb31c55805f62"
    "cs"
  end
  language "de" do
    sha256 "bccf8dd2f7d807290f3f85a1a091fc90413a0b3591c2a9c281e555f772b11766"
    "de"
  end
  language "en-GB" do
    sha256 "d74aecc6e8ed523ba2d5d299ce8af5e47b42600a4f439bf3610e09b0536031ec"
    "en-GB"
  end
  language "en", default: true do
    sha256 "89a399231c0a144e04b26cdefa339580f7ee55cdfa69a5bf7e8ec9cb14f315a3"
    "en-US"
  end
  language "fr" do
    sha256 "368d2e6c6ddbee6853aced329d4816669f2863a715d2cfbc03bd6af2a24f0ca0"
    "fr"
  end
  language "gl" do
    sha256 "469aa02b5fac1cc1664ee983debde9c05679ac952cf14bc336360361a2fb5c5e"
    "gl"
  end
  language "it" do
    sha256 "0378316b72d1afeca42d55a3dc205e21473d76ce6ec06fc5553e45c1e412d7af"
    "it"
  end
  language "ja" do
    sha256 "ce2ac15fb95c939b3eb488e71e18b134d3d4b07f6c5de8e6a402b79beb5e6597"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "273005b80fa9006a15b20d99dc2fe5c60a2878a99323ebaf832ffbc9bede07f6"
    "nl"
  end
  language "pl" do
    sha256 "f94c35d72016ff31af78c242984831a0d2aeb76c2b09eed311ac200a994e85db"
    "pl"
  end
  language "pt" do
    sha256 "9d801532e67abfe6367b72b76ff236231817501f353d0a3300e00cbc83ce2fe5"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "9269ab545b4c4eb539958b0b0b8546a459361a1efe142c2d5f7b44553cdae0df"
    "pt-BR"
  end
  language "ru" do
    sha256 "c55b59cda927e44e8e0d1b10334fb0f69f634c97f3cee6c5bdcca1efa52f47ae"
    "ru"
  end
  language "uk" do
    sha256 "4bb4e490bc96265eea0ed15ee9d030c3530a25ca262e2ed22f33ffe099030f44"
    "uk"
  end
  language "zh-TW" do
    sha256 "54572ace1a23d0e6468b43d86a3e61b590960f34e2b9672fb078d7c95a644227"
    "zh-TW"
  end
  language "zh" do
    sha256 "68707c5d389e782abb60ecec5c405d8ead9ee91d384d1f049d4a268d414d06e1"
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
