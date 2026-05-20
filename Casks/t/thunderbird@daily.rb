cask "thunderbird@daily" do
  version "153.0a1,2026-05-20-09-36-39"

  language "cs" do
    sha256 "ad2709d23635fa3692251303901ca50ecdb3ee250d6169a026d33a3f523d17a1"
    "cs"
  end
  language "de" do
    sha256 "61dc70466495558b5bbf0502fcc8e24a503b37db9b9e39549a68950bebab78aa"
    "de"
  end
  language "en-GB" do
    sha256 "0ded794e446e5a0fb0b3710cd0b3c96a6af0d4c05b038c7c669667ce68092192"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a79a5ca837be49a42ccb52de4735e323b07d9e0c684b3b6ba7ffd805d8d07cac"
    "en-US"
  end
  language "fr" do
    sha256 "0c5e0d324154e4ee375af2e99aa38852412db65cf39cafc47fbabad71370d736"
    "fr"
  end
  language "gl" do
    sha256 "f2fad310ac0eba252fe094eba185909c6de04e7877cd2e379f00c7384157eeac"
    "gl"
  end
  language "it" do
    sha256 "63ca143798f399c15ff5e1dc4169a75ad2a71d6c6a44efad52ebed6439d91291"
    "it"
  end
  language "ja" do
    sha256 "2e7a8ea95fb857e4c3b26b7a25a6c27efb7841c9f89b6e2625deb85e30c07671"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "565cf30605a904a67aa6d9975123e52cc84c016257a47729e5789e843ef2d9d6"
    "nl"
  end
  language "pl" do
    sha256 "963da1161c9a10cad838b5121154d7973069ca140c9f9eab3a858b2d15849cdf"
    "pl"
  end
  language "pt" do
    sha256 "77384e47f5abb8c5ff2c9806d9668e91dd098449ec9f67733249d07fde0e0b8f"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "62d98b75394634b332faa189d83a202665303ee363e8ef40f140d56cce850cec"
    "pt-BR"
  end
  language "ru" do
    sha256 "c5ea4442e28013a8b36c045e80f1da05ed29f00956c00c5a9619b59edbe308bf"
    "ru"
  end
  language "uk" do
    sha256 "a24c4885e94bdf75f1c634652beeaa5fb36a98d465406a2a501786e6187a3bdf"
    "uk"
  end
  language "zh-TW" do
    sha256 "41654d16f94a29cd9c2c2c27fe7a6f750ae3d9e3125eb48c321421ea4cc2e042"
    "zh-TW"
  end
  language "zh" do
    sha256 "3635d251f67c1c81fce32a4df01722f45dcb28199f80a25dda6f0c391994b069"
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
