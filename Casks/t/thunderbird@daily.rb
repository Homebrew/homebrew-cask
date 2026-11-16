cask "thunderbird@daily" do
  version "162.0a1,2026-11-16-09-57-11"

  language "cs" do
    sha256 "018a47d4130e3e4ecb20b31d2e1d218878de7f07b509d19753fef49e6492e7fb"
    "cs"
  end
  language "de" do
    sha256 "777c6ebe211e3cc1a556efde3ac3b54298064a2fc34f8b5a9def6a87771b13ae"
    "de"
  end
  language "en-GB" do
    sha256 "10b58da0be3eab8e17e3f39edb82e9f450c4301daf8ca06cb3a964463faae6f5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "abda8d623ccacb23a9f8e60fa53102bfa31dbe1312dba6711e8123d186d2a18a"
    "en-US"
  end
  language "fr" do
    sha256 "2f40fe59e4ea1a66cd21bcc077dc6c2ccb897c1ee72922d7b55af5024a1a5401"
    "fr"
  end
  language "gl" do
    sha256 "e4be18a8f83a726729b4a34fa5965a5f2f174e76263023921e8d1ae1589ef145"
    "gl"
  end
  language "it" do
    sha256 "0168511e9722ed10977c90af4d47d6b0dc2d98b10368fee3c692fd9a592ce6fa"
    "it"
  end
  language "ja" do
    sha256 "7974c67eec92cd394b6812fec2ca8b003801c39aae92b5d9cebeb7a523535003"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "8547cf07d5d5860a93e186735f20674bb0de79eedef78dab3050201ee2e94195"
    "nl"
  end
  language "pl" do
    sha256 "dcea377eece25d61f2c22dad7a4b0fe42ef50a21f95c2a2ce86d7a8d94f15be6"
    "pl"
  end
  language "pt" do
    sha256 "e3dcc97987b8ade65bba8d5100f1a056c5be56b22def1c118befb8225ea0f411"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "f3a19a4cdc8f1067a4059d7814c1863082cb0d3ce3c3f0599367d89b322afd40"
    "pt-BR"
  end
  language "ru" do
    sha256 "da44ad9a47c598e01267ea83bd4c2033aeab2261540cad6e82f0638987366dc8"
    "ru"
  end
  language "uk" do
    sha256 "d1f0c1751ac58ec9e7627d97f5d4efaa530c3ec4f9ada7fca377ce89ec4b14cb"
    "uk"
  end
  language "zh-TW" do
    sha256 "0791546610d5bf66e3209e994f16f78f851e438cc91c06bd46d03caa7374e12d"
    "zh-TW"
  end
  language "zh" do
    sha256 "24e8c7600682cc39f093f7a4eb32c958fe39c55da16ef1385ef467fe5ae49c95"
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
