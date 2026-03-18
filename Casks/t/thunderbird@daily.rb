cask "thunderbird@daily" do
  version "150.0a1,2026-03-18-10-02-03"

  language "cs" do
    sha256 "7fcae6ad807f01c4617b6999415a7cc4bedf264dbf5d45a1a95d141ce506edbc"
    "cs"
  end
  language "de" do
    sha256 "2cc2a1d5bd56b43531fc8138d0e75b9298268b0e5a1e68b7335721623235c4f8"
    "de"
  end
  language "en-GB" do
    sha256 "3438021dd7a215e9f06c5f4359d3abbc1d019e2b1b1b596bdf93e14d1e6276f3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5afc58ac7f03411c2eabe627e3f4b86db8a26516f6e45467836e816836540652"
    "en-US"
  end
  language "fr" do
    sha256 "d7fc17f4cfeccceee96d7abf20e06d477a580b8c9bc67cd8f73e2125bfed8877"
    "fr"
  end
  language "gl" do
    sha256 "86f779bdafcb3f4acca92daf57a90b5067833fb8e297890befea965d5f127c6a"
    "gl"
  end
  language "it" do
    sha256 "89c3c82e710df5642892c53727e6fd62fca7c3a1ab265a336f0cf39eef8b02a9"
    "it"
  end
  language "ja" do
    sha256 "d270d418642c9a808c699db2314ebd02d46d5389561dd765a560cf345e7606dd"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "052968299f719c4221c03dc08d79d383486e598b09fb480468ea0dcdca184abb"
    "nl"
  end
  language "pl" do
    sha256 "6b3693d1907ff78bbb16455dc69ff9cb347b7749d7afca057141bfad1999082e"
    "pl"
  end
  language "pt" do
    sha256 "aa99498d53f48c172995b50ee81763c7a6829356de1b29abc2a7edbbe48827ab"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "7b1be26bcc7a02b88e4805347772f398ff417ded94d939d7cfac47cd8b21c2e1"
    "pt-BR"
  end
  language "ru" do
    sha256 "10c3242ade440ee3be5a2eaa0eed76339bdabf20057bf6a6d3fdcb4924559996"
    "ru"
  end
  language "uk" do
    sha256 "01bd05ebc2e69b5d607065db952bfe53b053c908302a7b8b32c5940d3b6e881c"
    "uk"
  end
  language "zh-TW" do
    sha256 "9059419cce75a6224cbdc8e7c1a1ca787a46413fa440edad5c57d26c71f02d57"
    "zh-TW"
  end
  language "zh" do
    sha256 "1ddd170d0b4b4268ab3e13ce844c5ebd2954cc436e9545bfda462a40a56927fa"
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
