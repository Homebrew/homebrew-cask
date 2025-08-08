cask "thunderbird@daily" do
  version "143.0a1,2025-08-08-06-51-46"

  language "cs" do
    sha256 "3f5e1190891dedb44340dd13d3d73513e72bca7218299a168b604825ba89b8db"
    "cs"
  end
  language "de" do
    sha256 "d3ff2d3937c6dc429f4795e2f73ac18e8203a7097758a598dce179a1b6b1f856"
    "de"
  end
  language "en-GB" do
    sha256 "5abf7d5eb5d5290a00e965dc9241a6a00f7643d28333ded5ca8f8ea14cbc99bd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "68ca53fccd4f3278090aac70ac68a1feb478a6457de564d87d1f70d809ab8c28"
    "en-US"
  end
  language "fr" do
    sha256 "6aa90525ab664bdd7996274857680c971657b8dbd63ee9ddeb96e28d993bce69"
    "fr"
  end
  language "gl" do
    sha256 "7d270b8037c9be89a7b511d56887f657cfc175a36205b10835f7c6f106dbfda1"
    "gl"
  end
  language "it" do
    sha256 "c9d7553dd9c0577ed0602887096a99703ad3b29cb71ff186d44aaca5135568c3"
    "it"
  end
  language "ja" do
    sha256 "f45803c5ee507e3b69d5d534addcb4c583eb24dc2aabec8f8e70ad20050d5729"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "7aa6595391989c69444be64b3c4a22e660a4b3f7ef420b25a3f4f3c5bb362841"
    "nl"
  end
  language "pl" do
    sha256 "6877bf9de388fc4bb3a47fcbbf8cc4961689c6d5a4f1ed7bdb962cd8175ee7c7"
    "pl"
  end
  language "pt" do
    sha256 "defe488601b05988252258811ea820c9d1aacb479c616d251bafac8e20a1bc2d"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "7e044dd93bc189877f3c633d6621c218734e4154743652cfe53b9ced2b826256"
    "pt-BR"
  end
  language "ru" do
    sha256 "d56e87f24aa8a77f94884c0c565b953dba96d9d846f929160835127be1868980"
    "ru"
  end
  language "uk" do
    sha256 "d4a469653cb4c222cc17190c561366be26cf12b0689394043747852a3c3e78fb"
    "uk"
  end
  language "zh-TW" do
    sha256 "090dfdb39fe5c5e03839abed73179b784789b49caaaca54429b0d264bc96b253"
    "zh-TW"
  end
  language "zh" do
    sha256 "7698632f5aed25bcb8950593d863c93d337d3b6e65558e7749ae13b0d1e505c2"
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
