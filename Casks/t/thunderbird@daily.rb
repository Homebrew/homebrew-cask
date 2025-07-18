cask "thunderbird@daily" do
  version "142.0a1,2025-07-18-10-12-18"

  language "cs" do
    sha256 "ac4ab57ccdd7a933ed63f28d3161bbf397d62fec435abf0ba52de528f1ac73de"
    "cs"
  end
  language "de" do
    sha256 "67dd42cabed9841d3003770ca4732165bce268f149b7b0f5207a11819c14f4d6"
    "de"
  end
  language "en-GB" do
    sha256 "7e6a83d0912d1a95162522fcc40441f4a632983c8d2b8e82571109b1c360e463"
    "en-GB"
  end
  language "en", default: true do
    sha256 "03e6e1d88b46fbdd6d38feb4e8ce706768f45574b35df20edf2b8f67d6316a4a"
    "en-US"
  end
  language "fr" do
    sha256 "a49babf7bec0bddc41e65dd8a2094d8ece91aefb4363b743e22ae8b6e7a2fcdf"
    "fr"
  end
  language "gl" do
    sha256 "51e8b1a3d958979665552b7b34e3049c8385dc66b90831ae6d1703fa8ac5c6e4"
    "gl"
  end
  language "it" do
    sha256 "5d437020e228c1238736ba4c2e5b9b2810cb2ef42cdf9f970a491122ad4f3f12"
    "it"
  end
  language "ja" do
    sha256 "ae5b82fd4ea9a15e180ad0e4515967072c1d1c9744c4c74a4a028b1832a4bdb2"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "987572b1421e9da9438a150e6eed40a4cc5ccc106a3378abdc002398f51cd157"
    "nl"
  end
  language "pl" do
    sha256 "96eadb53b4931bc2876555aa42b2a8b733a17cb64d3c1e8a9c040550a1f313f4"
    "pl"
  end
  language "pt" do
    sha256 "a6f570129d3cafa3fe9460444a47c32caa625c9393c68df8150348397117782d"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "7f40b5c8532dc6e3a024eb56099c01d9e492d15b733adaab5bfe2bb7ed5c0c4a"
    "pt-BR"
  end
  language "ru" do
    sha256 "6ab535e7472f1c852b35a2b11fb8d39bff37fb8517e2d3d91d2447277b07d320"
    "ru"
  end
  language "uk" do
    sha256 "4c731efb00642ebd6c0c12ac035fed161d8854995523ff7b5fdf62beda9e20e9"
    "uk"
  end
  language "zh-TW" do
    sha256 "e629163db9bf46ffbcbad752ee23d1132430b9a7838df8956e5f758bef927820"
    "zh-TW"
  end
  language "zh" do
    sha256 "0c5ce20b86b8b894bd5b99ee770c230dbb61250574780cf598ac0e4ed955bf91"
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
