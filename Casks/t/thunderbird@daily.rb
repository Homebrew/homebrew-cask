cask "thunderbird@daily" do
  version "154.0a1,2026-06-24-10-56-34"

  language "cs" do
    sha256 "a4f1147c6f5e36d61908e30b5d5ab472dbac1c2c1c744a135b2eeb81d2a4dca0"
    "cs"
  end
  language "de" do
    sha256 "b19965c70cea65552eba95ed75ce20d9b927a2748a1266f5f630ffe24bf87dc8"
    "de"
  end
  language "en-GB" do
    sha256 "5c2955e752200912232a025450ec5491b474bd0bca4987429a9f58a6a0716b94"
    "en-GB"
  end
  language "en", default: true do
    sha256 "262fc10b4d13c5318b4e4575babc8d4a1ed057bf06a5c88c1eadf68ab461680c"
    "en-US"
  end
  language "fr" do
    sha256 "d29c04a1541e3caedb71fc341cdce3d8aa3ec91ec0339c4b67cd882c9814abaa"
    "fr"
  end
  language "gl" do
    sha256 "4a71f8ee0448694dba444ef088bf05b43f72689e2f3f9297908886e15ed66e9f"
    "gl"
  end
  language "it" do
    sha256 "95c7bc57dd30dfce3e99e522043acc281e49b5e797637c3ff2eda16d11bcf45f"
    "it"
  end
  language "ja" do
    sha256 "a530142995a7e3e200c21f3f4556a399c1ba57f358c37cac34cf702788d9c1ba"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c11ae093f78cb945ecd752d84649a25a98727d841e8eb5cfd34eaccf2ce06bbb"
    "nl"
  end
  language "pl" do
    sha256 "630e041b2aefa37ea189bf2e415dc7e2b9af360de19113245df33888f7c98009"
    "pl"
  end
  language "pt" do
    sha256 "43a55b3ffc2435bb56a35fd1ccfff46219e4f4092241f2419584bbc43c617ac1"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "67cd964cedaf57d512afecfbd97ce6639912a5f06a8249a697c38f04133e542f"
    "pt-BR"
  end
  language "ru" do
    sha256 "253595c51a5cf279dc669b7a2230b89f9a16ae0d3ddadc65d03552f9d6a6f1c2"
    "ru"
  end
  language "uk" do
    sha256 "24879a6266d762525e28d26dbfa02785e325abf8f55aa8d74a3f488eb88b3c94"
    "uk"
  end
  language "zh-TW" do
    sha256 "cac22482ce0129705a8fe0208f5a2b6a7c28f0f64c888153acef54579cff1370"
    "zh-TW"
  end
  language "zh" do
    sha256 "95674350db79e3c60ef872f0d579f563f05b8c00a052578bba698c08861dcd81"
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
