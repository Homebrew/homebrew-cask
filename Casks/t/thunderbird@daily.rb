cask "thunderbird@daily" do
  version "148.0a1,2026-01-12-10-24-41"

  language "cs" do
    sha256 "47be65c361b11642b9642171ce296332dee973fe441e06957816be5ad0b632a9"
    "cs"
  end
  language "de" do
    sha256 "69892c6c4475406ec3e17acc2feae8ccfb31dab725ccbbc5690d8961b5dab146"
    "de"
  end
  language "en-GB" do
    sha256 "fbca6c0fb615dd8d65255a8fa054038a466277cc630861dbd23b0845d3dcfdb2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "17a71644c654461c0cbc2f85ed55371fed22381071ef960c6034dc34a69f3d64"
    "en-US"
  end
  language "fr" do
    sha256 "1a8432b36cb4ec77c7012eeb47c35d358bcc8850920190d4dd9cb511a7ae1e44"
    "fr"
  end
  language "gl" do
    sha256 "1d4319e4c2f9bb1068d9bed30e2d2a179fe6a10178f7bb2ce9ac7f6522dc39f7"
    "gl"
  end
  language "it" do
    sha256 "122e2c2087dd239a2472f7399792adf82d3b378dc5ea2669dae833547e9b069b"
    "it"
  end
  language "ja" do
    sha256 "991447344e2af524383d575404043d7021340688388fa02eeb027701f47643ed"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "454894db987c73874e818292ea77486bfc93db8c3d1121b7e8fe37065ac22fde"
    "nl"
  end
  language "pl" do
    sha256 "6eb2dc87011d38a701631598b3806c50ff93e873f0ecfb16f9815543698176b2"
    "pl"
  end
  language "pt" do
    sha256 "71b2499bda7c2456246d5fc1a064370c2f427bcd7f2a4420ee6288d9476a7548"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "57b61e7155880830cdae73fd902d4a70a28ee99515d2ae6e88e9ace2d1c09a78"
    "pt-BR"
  end
  language "ru" do
    sha256 "e9667723f97f7caef155fdb1f34e5ea3cc2f89b9483cb6b498ef49a087e9a6b1"
    "ru"
  end
  language "uk" do
    sha256 "dd652c4c818563da9832d5b0dce65cf1abe43e5cb85d1dfa0694b13a4d6b306d"
    "uk"
  end
  language "zh-TW" do
    sha256 "01876c9dad0ba6c1583cc06146784a306a87c8f8cae76ec5b0d9ea7819b1ed01"
    "zh-TW"
  end
  language "zh" do
    sha256 "9085289742a88d2a96b5b155785048db3bed8f90b18e9808660d88ccccc9f070"
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
