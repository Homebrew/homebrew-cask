cask "thunderbird@daily" do
  version "153.0a1,2026-06-15-10-06-22"

  language "cs" do
    sha256 "814ac7852820b237f9f49aecb7ee981e97be30c79a803876597d74c3778a1c1a"
    "cs"
  end
  language "de" do
    sha256 "05d1d2017214ad66e9a3a6c60e51e32ad872b7fd706f3cce977972055290e89b"
    "de"
  end
  language "en-GB" do
    sha256 "b1a76fefc70bbaf5b038fbfb2a9c4a1912b29d9ba904a1c6a892a6ec1135148a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c42b18f03736a9a8c46490b8559bf4829d3e3270f851ae15251908c0b21c4812"
    "en-US"
  end
  language "fr" do
    sha256 "52bf71273a572d5a046fb91ba5110bb2351f4ddfbf296b00dd0e18fbedb81a89"
    "fr"
  end
  language "gl" do
    sha256 "1513000c96827cb5d79eca1759d7a0b94af1c9f7d63d967b24cf26129253310b"
    "gl"
  end
  language "it" do
    sha256 "d36d417959b8a8e561ef7d037a236674c6dca5bc8e32ba0185d6557cd59281a2"
    "it"
  end
  language "ja" do
    sha256 "9147b98024b673bb54f17a0832f7685dce22fefb4aa9359aa64a615e6b918a87"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4ff43ea619ab7b1a761acaeb36746986ed5902a40d50dfd6e9a0c9f8237d7f94"
    "nl"
  end
  language "pl" do
    sha256 "9a6bd1782ac9472196aff723f35fee20b8148b0ccdea2321112f808af807dd5a"
    "pl"
  end
  language "pt" do
    sha256 "4ae168de4548930b30f5c12537ebf198ef131f9e4da07c3b7145fd038c221f4c"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "dd538da91951675ca9f1f8c392886c4d3938e1423c5ab2d0b0a901d351572017"
    "pt-BR"
  end
  language "ru" do
    sha256 "fb3356247a76c33adb0e23c001c43b1e1d3af490429880397c22e08670afad54"
    "ru"
  end
  language "uk" do
    sha256 "3462a4b7d8ce0d7bf49d82d5914bc1e61d9948e8750cba02a8a866040350bb74"
    "uk"
  end
  language "zh-TW" do
    sha256 "bab35a150b2f076e086cb77466d6aea448eabb5e1aae7fda3bfe1ca616363726"
    "zh-TW"
  end
  language "zh" do
    sha256 "ba6ba129d45b2db5b17d1e269201d8f004e0dc2c5803ab6fa148d94c45e467c0"
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
  depends_on :macos

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
