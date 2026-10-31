cask "thunderbird@daily" do
  version "161.0a1,2026-10-31-10-44-15"

  language "cs" do
    sha256 "df94e5f568f992b14194a4365bb16fc4c0fc347c6e6b347a415a57bc5987e9e5"
    "cs"
  end
  language "de" do
    sha256 "1b56e5c22408019d0259d9d07a055635a5ab8846af52464b0423f512e9838663"
    "de"
  end
  language "en-GB" do
    sha256 "f8a20d39b317a010156c8fe7d2940f3989f113a83214225395da383a84ecfc8f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "efa18412a3cca2c7922d90472a5740501e5685be70353b2990f8d820d6d2ea2b"
    "en-US"
  end
  language "fr" do
    sha256 "d9038dfd4107b41cbb706b4e7de2d5512b867096b7311f7641e486116326f53c"
    "fr"
  end
  language "gl" do
    sha256 "72d85d88e9a05f2025941549bb10c5e811e1f93fdd59bb58a6558a20fbd817d5"
    "gl"
  end
  language "it" do
    sha256 "2f7916f36335af1c225352cc03417bde68140f1e0f10a49a401d45bd044fc40b"
    "it"
  end
  language "ja" do
    sha256 "49999d32e37f47448076af0f142c92abd86c3f98620a15daaba1c471989b16c5"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "8f7a126fcf07d07c43e6ef0eab0e82547f6d3fd2acd973f31132d9edab8cb82f"
    "nl"
  end
  language "pl" do
    sha256 "b1e912d4096d6d560e791eb563e62308a59115b5019038f5d76a8bd74e054e8c"
    "pl"
  end
  language "pt" do
    sha256 "75885b29db03c123e2e47e245dbb4f850abe0ea3849b7b45cfab216ae112c609"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "f34bfd8ebb04c067819ae3271cb6e751fab2d8820aa1a7b3587455d695aae338"
    "pt-BR"
  end
  language "ru" do
    sha256 "2f912d6549ab6914517d44f4a6078a13aa58230d8d981b544b63c97758fa87e1"
    "ru"
  end
  language "uk" do
    sha256 "77260d482442f55a749b1950d0b53478eb43d37fa8a961326177971a7d5c8283"
    "uk"
  end
  language "zh-TW" do
    sha256 "e6347a9b76b3ef372ecc4e962b9cc4ffc827d4b9d98c8a01d06a4adda8d9cc13"
    "zh-TW"
  end
  language "zh" do
    sha256 "28e01d59266628db4cb6f2164e4e067b0e64d7d35ec1e2257fa80be9eea0eac6"
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
