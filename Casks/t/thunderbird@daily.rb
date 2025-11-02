cask "thunderbird@daily" do
  version "146.0a1,2025-11-02-10-55-00"

  language "cs" do
    sha256 "4199d13a2c635a9944c3ec30507371bd57d360b82fb2b3f0ad6da4be96b0eeb0"
    "cs"
  end
  language "de" do
    sha256 "115ef8117c1d166b30664851eab83149fedf26c032b0a304cd736d755d814d39"
    "de"
  end
  language "en-GB" do
    sha256 "e9d949ca6632edc1b1b0a019592dd58bc8a9f15c16e4458ab12980e94f15d9f8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "64e5d9dceea7f43bd92c0bfbb25dfcb73e60d834d33ee1b5e09cd6d436033685"
    "en-US"
  end
  language "fr" do
    sha256 "522209b88eaff8a89f35049a3923779bc63f89a1e433a69be3d373c9f6e8beb4"
    "fr"
  end
  language "gl" do
    sha256 "51774d75c3679ebfe2538f21bb3bc8f6bde3682ededf1f4bfb250366781a14a8"
    "gl"
  end
  language "it" do
    sha256 "82d8c7e69a5ccef1334adac3c9098e74ccfaead7379e28573965c843d22d16cc"
    "it"
  end
  language "ja" do
    sha256 "9627e316b49309cca749dc6a1502a106efad42fff602f8f1721a875563f6d9d8"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f2105ee20e8d10b31d8d3eee6e7e9ec6205140523a16cabd12f292f170ff191d"
    "nl"
  end
  language "pl" do
    sha256 "89bae74a2f5248edefb173b36c2e60d68f3d74c430aa4f6ed1ee7255a5baec94"
    "pl"
  end
  language "pt" do
    sha256 "e1e7116fc003c4667be69389949f07a854fa6aca7c95d6ed78cdef2494e5c5e7"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "45c9f15cbf528bca03921468051654997b273a66a5b058a6869fbef5f2378ca7"
    "pt-BR"
  end
  language "ru" do
    sha256 "a442721c3b81a2c620c854a716f34c9cf171eb72d686508b682a372c4755ca8a"
    "ru"
  end
  language "uk" do
    sha256 "0f687d0885e733ec6618d155f1951b578fda478683c465161ddcd146b6bc2956"
    "uk"
  end
  language "zh-TW" do
    sha256 "49dfe589c5fc80f613a774d9ed616121e8e02681c4d1e36e3024d7d6b88ff3e0"
    "zh-TW"
  end
  language "zh" do
    sha256 "ea9036169b0a4b261a637d7c25d60970b8f014eb98c71cc75168b14b1b224bdb"
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
