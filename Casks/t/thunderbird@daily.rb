cask "thunderbird@daily" do
  version "146.0a1,2025-10-27-09-45-05"

  language "cs" do
    sha256 "d9e75e4a0b789da94f2fac126116544ad27bee8bb94629126da4b543af27263a"
    "cs"
  end
  language "de" do
    sha256 "ed3b7ed8a926688b3c84ba1920f9229b764dafca8e0da0253ffb82478f933fb9"
    "de"
  end
  language "en-GB" do
    sha256 "74066059c52cf48b80261acca081d2d0737cdb623197f2b2aed987e29c26c933"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3d3f204f07059e376b9ff8008ffe2afde729a830e7977138fcbefb964e148941"
    "en-US"
  end
  language "fr" do
    sha256 "abed75ad2716512e7a9b9c434a869880d239620488272e3cb89a91092c5355c3"
    "fr"
  end
  language "gl" do
    sha256 "f7c81b844bcd2a91bb3de53c80052b07cd41fd37097af108d6752393446374f5"
    "gl"
  end
  language "it" do
    sha256 "c38b7fd457a03cbbdd25364443c2c827b4e42f11a4a20dcb1736043626254e00"
    "it"
  end
  language "ja" do
    sha256 "a8871949fd25f14e35dd0563845691cd9b5c6dc55c9dcb18ab9dba7284eb9956"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "7ce069ba5d6abbc6f0b9195c140045ee5ed0aa81eb9c532c64afdcd1d1fb1863"
    "nl"
  end
  language "pl" do
    sha256 "c1dd2bdc96ae7c3fc6f4a5366bb6a2995b15eebbe9cd2656b5db9a1aeff09e5b"
    "pl"
  end
  language "pt" do
    sha256 "0a3a29922263cf29868e0b210ddb2825e392928dbb180e5cde58fa0818991437"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "437005abac2b66580fe12bebe6e72f6c3f4b4ca10d83e2f5efa15029b8027947"
    "pt-BR"
  end
  language "ru" do
    sha256 "82eae8f22e13cc498c42e9ac7f8a107b4cfb5ec21371e8f066cf2ba7bb1a21e8"
    "ru"
  end
  language "uk" do
    sha256 "fc893f15cd9b3da2bf6b3dacae666e86ed91e7d344283a056c42c6c6e94b9300"
    "uk"
  end
  language "zh-TW" do
    sha256 "5406696d6b8b5bd52262242588d8c2aa17ff68650a4d78223f4bcbdb2e5b12d6"
    "zh-TW"
  end
  language "zh" do
    sha256 "2b5bf98e1315ebedd93aefb90485010aebd325a644eaf2d55970244221c4bc5d"
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
