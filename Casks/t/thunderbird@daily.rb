cask "thunderbird@daily" do
  version "150.0a1,2026-03-17-10-46-36"

  language "cs" do
    sha256 "6f393f6650e52484ce888749d55cf96fe651df32144ed2b78afdfc14bac22b40"
    "cs"
  end
  language "de" do
    sha256 "5f89e9e32873040f8174d1d0ac4d9a0ab2117211b4b4fc403cd31a1c0a358053"
    "de"
  end
  language "en-GB" do
    sha256 "b1be496fc3eca29b3b6042af3bde914bee5ccc512815ed8397ec6dc3512647ba"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c0120979ccaf589d814784ec243f1f120794af1a63a4cc451c832a25c4d630b1"
    "en-US"
  end
  language "fr" do
    sha256 "4f27b2be60e246e3f2d066c09aa98d8e92bd97a9ecf9056ca040e7d0ec2fe546"
    "fr"
  end
  language "gl" do
    sha256 "bc567f135e3f434b7daa5aee5850f27b34ed4a6a493c57b028ed34e46f0bb409"
    "gl"
  end
  language "it" do
    sha256 "60ec3ca516006ea578eae28acb9ee68bb1c500684ea9682af60aa42d0b0a37e2"
    "it"
  end
  language "ja" do
    sha256 "d6b5c03fecb1be83f03ddf0b6612bb7811e4fc34a94e491813774524a29b36b6"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e37856cb1923b21abfa436c9ff609ff31dbced8311f9da287d2815ccfbf8babc"
    "nl"
  end
  language "pl" do
    sha256 "60d16d6722469b47bf6561e9c27ffb5e191c24a1ddf65fc7c7661c5bb74b364d"
    "pl"
  end
  language "pt" do
    sha256 "0373281b120d04d2871387128d54eaeecd56818dc2d63896b8aef8408a595fa3"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "bb71d8fbbdff1c948fd41bc5dc9d5805e3827f883a3bc6d0f22a281851f0c722"
    "pt-BR"
  end
  language "ru" do
    sha256 "0122fa30fc86dd9ea8b3060a0403f60fa617f40b6b30f9cad77ba7ebd84738f1"
    "ru"
  end
  language "uk" do
    sha256 "5b01c4748c6bd93ee7e53937a2e26c137ad3c797ffcfc5b28d3f3cb8e6dcf048"
    "uk"
  end
  language "zh-TW" do
    sha256 "51faf65c604380460e535b039afea4d18509f1280b926a2e2f2c8b03918dc6df"
    "zh-TW"
  end
  language "zh" do
    sha256 "3fbcd0c44a8809972b395082b5df990cffc9714351b8ab841afd2a10bf90dcf4"
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
