cask "thunderbird@daily" do
  version "149.0a1,2026-01-22-07-53-33"

  language "cs" do
    sha256 "502f6a21f5573c8d1633c3e1c8dbc57a4f2a4ca23112d41847641f4e6a2e8ca3"
    "cs"
  end
  language "de" do
    sha256 "4a7d6d2358f9cc8db703cd186b4ef178f0da252bfa0db393e149eede79eea4bc"
    "de"
  end
  language "en-GB" do
    sha256 "f2a85ae5672c7a64d04b2f799a7e62ab3823f5c525726c0f604c2bf08048d2bd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f2c489ea179bdd3ad258972b1904dfae022137a5f0027e673093f99477ff4fe7"
    "en-US"
  end
  language "fr" do
    sha256 "a734119bba26cef2a676638feb15124a09dccec68866cc0420af655e19d9ba79"
    "fr"
  end
  language "gl" do
    sha256 "b41f7885627a3bcd957aee7c647f8d48b1c0141818b2cb54dbe56d1cc4386007"
    "gl"
  end
  language "it" do
    sha256 "666fa8199c706fb5dc8813bb085e74d81752e1c04498944cc3fc1954a93ea2bd"
    "it"
  end
  language "ja" do
    sha256 "1763f9bebd517677e215453a8e49915ac956b4dfc126d23a95c6265f48af9904"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9f86224b1aa3a365654e557d94ff9134cd94cac22dec5e7f254250f1d3a01497"
    "nl"
  end
  language "pl" do
    sha256 "ff69a1d2ac6b023399694d8ba1e49df144c31da07cd32b2b4d41cdff84dff975"
    "pl"
  end
  language "pt" do
    sha256 "5568143aa37a2c9e7f14943b26b88a6216919114823292e4bf427d8d1ce8e924"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "f75b2fdab3008ee6851782724039d7610be5346ef1d61ea2c8ed5f863ef5b75e"
    "pt-BR"
  end
  language "ru" do
    sha256 "6044553fff36de3f6d493481264caa45b9090e57eb2f87bf26261033fe5aa429"
    "ru"
  end
  language "uk" do
    sha256 "99e952f50b8ed65cddfad483461811e05a17394f4ae7d535066c1b979a034961"
    "uk"
  end
  language "zh-TW" do
    sha256 "3df1a942d4f51a5ff63529c06cc7f0a415020043ab0930cab2bf3d1b89257295"
    "zh-TW"
  end
  language "zh" do
    sha256 "3f07b4e89411debadf27c13d777b747460990017b8c41da7d18ed037dd6ae641"
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
