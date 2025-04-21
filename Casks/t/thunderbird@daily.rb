cask "thunderbird@daily" do
  version "139.0a1,2025-04-21-09-50-27"

  language "cs" do
    sha256 "c635be279403125d1098342c29a38a6e3d51b3cb301531c6164d914e2603f02f"
    "cs"
  end
  language "de" do
    sha256 "dbd8f03545d0e331cb8c69045fdea011ffc8a85dbea9a65c17d5fcdfcf777d7f"
    "de"
  end
  language "en-GB" do
    sha256 "bd549c75afa2e6c6a3dc988a4963841d3b1196ea38fc4ca467f5118464648f0b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d30870bd1641ddf6b22913226a655f9dcbe86f554cd5e2b62b2f5016c86dea6d"
    "en-US"
  end
  language "fr" do
    sha256 "27cbd6f732e4c93cee65930838eb9b2130f2f3c3a4db3c9afed14d8054b05918"
    "fr"
  end
  language "gl" do
    sha256 "5593b71928a416bab3dbdad8c56fe4d2df17bfd263a175855d89df43dbef6672"
    "gl"
  end
  language "it" do
    sha256 "7253a17d4d066e86a22801dd3fa48c4119fe5720f21860ead1733945b6b6d9d9"
    "it"
  end
  language "ja" do
    sha256 "4a8dd9a77d0aa4c43d3ffbe70bb1c7ec478ef75641a44452b126b7873efbd45e"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "662df79f27379823a888e0d10837a2adef4ec6ac82dcf5bb404933166452bab5"
    "nl"
  end
  language "pl" do
    sha256 "a14d9e28a5a0f59c5df96c4cf4a0b199276cc8411bea1ef9e1a8cfaef84bb18d"
    "pl"
  end
  language "pt" do
    sha256 "e752593a72b2af40645b060da031b762da17210f83a19325be0bc611dd66c9c8"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "680e4ccc242cd5edb50c0571da91b7cac9664085bb35a14715b838dd98809e5f"
    "pt-BR"
  end
  language "ru" do
    sha256 "a298a305541e4b65c74757d421dd815d080a34b1b717aafeb6cfd9cfa8f8dcd1"
    "ru"
  end
  language "uk" do
    sha256 "0507c5a4203ae0ab63a4676e39f41d0f6d73fe4d151788e81b50834311364255"
    "uk"
  end
  language "zh-TW" do
    sha256 "87c3313ce692f6b8ba7f6857f87a198e9d0f81e3ef30b8f9edf26078efa33b2d"
    "zh-TW"
  end
  language "zh" do
    sha256 "c09d7ca42c253cb76dcad1c6575781b6c6a435fb654132859a482136eedc8948"
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
