cask "thunderbird@daily" do
  version "153.0a1,2026-05-24-10-54-03"

  language "cs" do
    sha256 "c19fcaa25db1c8086319522864084bb75035a0fdc5834dbdc13843938e902d61"
    "cs"
  end
  language "de" do
    sha256 "5bc27438259dcf819f303a9a22930fc47cc00ab9826a5895b822ed98d9783410"
    "de"
  end
  language "en-GB" do
    sha256 "723db8de9ef31118dca409975bf61c337d35006b4c71a0ef26fa657ffd00d9e9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f06e7f60a557da9bdf962fe0ed3eda58da931cd04aac780bf7c91da731afbada"
    "en-US"
  end
  language "fr" do
    sha256 "2a68cfe81abcc63f1e7914ad94a420567de4fc1b8a590868f711094ca161e626"
    "fr"
  end
  language "gl" do
    sha256 "89260dba3ce3aac7308eac99a4b85c6ad29e2ae94806122165348a416bfd0e95"
    "gl"
  end
  language "it" do
    sha256 "679643ecf21523a048f79937fc44031d5eca75bacfb519760e7ffdae9e6da0a5"
    "it"
  end
  language "ja" do
    sha256 "10ada4b9be9190ff5737439ea94d81032aff2d7247ebe2b15f3b073fcc7080f5"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4c77a28db59ce3df859c8b63bdaa4bda959f171f3612fbea7798be05a441426e"
    "nl"
  end
  language "pl" do
    sha256 "acfd4a1b5d012dd2a1b4c1a6cda4393f5dabf2bebdd7f7d72a51557e268ed660"
    "pl"
  end
  language "pt" do
    sha256 "e2c41376208be3ea7f4ac6f06a869513aff1f6bf159cc3fd81747e9203ac6c43"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "737e9d55e02846b4b2484e951f987fa051b674eb9bfd410b11c69a41b411ec64"
    "pt-BR"
  end
  language "ru" do
    sha256 "5163e3c8a9342aa8d82c1f5c69f462ffe134085399168f14ae5099d6e510e0b6"
    "ru"
  end
  language "uk" do
    sha256 "0d49f97747e1026b9012688e233a96c1da433d444bac251c2b78cfddaf0d3ecc"
    "uk"
  end
  language "zh-TW" do
    sha256 "21506b96822411eb73c487120d74cc824dfb99fae80d6587f24e09247ea5ad3b"
    "zh-TW"
  end
  language "zh" do
    sha256 "d82d010e990d9abb0a38bed195f2c0fd7c5922fc969977ac59fb5531aa172f0e"
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
