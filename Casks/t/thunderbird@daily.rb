cask "thunderbird@daily" do
  version "142.0a1,2025-07-02-10-20-09"

  language "cs" do
    sha256 "1ccac9d12db809acffa9bf64d3cc1fb9591ee9599ba1a053235ada7ce06bf028"
    "cs"
  end
  language "de" do
    sha256 "638bfe6ad6c3233da037d4538f24126e1e647f53e05e9a788fd5b0e768d74427"
    "de"
  end
  language "en-GB" do
    sha256 "10fb14b0548f9a7a4dbcbb3711020c1a6ed742a75c928fabbcbcb21de707df74"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ebd486d4ef4cb99c08c2d2516bd47311321e081a74273810c7979c15747fc2cb"
    "en-US"
  end
  language "fr" do
    sha256 "3e60e914cc468ed2d56acec74509e35da0421b7ea415ce9d5c767650e0d42ee7"
    "fr"
  end
  language "gl" do
    sha256 "683e1bee46b7f5522df71198b8e3f184decc353a1a6e06712b1c9a16a6e2f931"
    "gl"
  end
  language "it" do
    sha256 "6cc531b9846b5b5eb764020fe21c2de7dea4edaa02f130c52e014f1978d5cb26"
    "it"
  end
  language "ja" do
    sha256 "d15df1bb43ce8e027a65a6d2b1cd3bc0b1d091fcbeccf48fcac53b3e4b980a7f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "d6e17e9f6ac7d03b204245897f8e140ab60188f281910642b66370dbc4ca0e43"
    "nl"
  end
  language "pl" do
    sha256 "7ca819ba4eaff2fe9668be60c54d12e550980d6957fcd28e3a592e1077d363c2"
    "pl"
  end
  language "pt" do
    sha256 "b1de207c975e5e69946d0c9f264fa2566e7520e753dd3a4e288189c0ee49aa5e"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "4eafc3a45d85f0ea4e7cb5cd8424dd8450bbd39713e0a4d269543515fcea1d9d"
    "pt-BR"
  end
  language "ru" do
    sha256 "69069bbb223e276ea7372472cd2e49e8613d872ce704e8092c2767775a974de8"
    "ru"
  end
  language "uk" do
    sha256 "6cf9f059925200dc535d4c1d3e52ee92e11d808f40c2ab2f3cbfdfdcec5061e8"
    "uk"
  end
  language "zh-TW" do
    sha256 "3330550145b995a3d51e23371b9079d853554e1e1ae714ff7881604433633785"
    "zh-TW"
  end
  language "zh" do
    sha256 "8739aa2586c5fafb902af88c427a017d643c917d8af75a83ae245d89e19a1bae"
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
