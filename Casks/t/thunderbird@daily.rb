cask "thunderbird@daily" do
  version "140.0a1,2025-05-26-10-55-35"

  language "cs" do
    sha256 "de7d8843f039c4fa26aa57be85fae54392a0469a7fe11724171795b46c75bc64"
    "cs"
  end
  language "de" do
    sha256 "8f592fc0c697078016800d96be3ce5e8895bbf50b80f3c7f4c90f7621e445868"
    "de"
  end
  language "en-GB" do
    sha256 "29b7785f595bfd79b42a9483cd47e59ca386ab6219662b2f0368b994166a7156"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4c94d33ed1360345f4bae69212c00ef770947dab285e1610e04fa9e3d520dbac"
    "en-US"
  end
  language "fr" do
    sha256 "1d397f80e891f86cf125da715e58b19fae236d8378df27e2d1c88867135f79e6"
    "fr"
  end
  language "gl" do
    sha256 "bae31a43304fce2fd32e934c1d5bf18e83d1f52b6d358ec20e7426ffc3d2fc98"
    "gl"
  end
  language "it" do
    sha256 "c83ca9bc3d73873bc98a4d7fd901b76fba4ff4afb6080d6d715fc1f315d61368"
    "it"
  end
  language "ja" do
    sha256 "a35131c3fdb1f8ad168819f1def01490ebc951a51856c366fdffc4b1dfd88d9f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "bc7398c2d4347005b90dbb529b3143e175f0c964da941b050c9e149977fc5f15"
    "nl"
  end
  language "pl" do
    sha256 "5d8088d434f3b5f9d1ae0ccc54ecf46f76335a9eb79f56744861d6df851bc1d0"
    "pl"
  end
  language "pt" do
    sha256 "b30ab7cfe7e8c9f29cd06c3786f6a094842947d139c22064b247b36a117cd022"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "c08d3150a84fbad86190543bd6565b062f87add22221d3a50fe8f5c44fa48d33"
    "pt-BR"
  end
  language "ru" do
    sha256 "2c9ca8f27a196721b1a4786163721f06d62e1369f7049b43e063b2253c7b2d76"
    "ru"
  end
  language "uk" do
    sha256 "876ab7fbd91591bfb15e9dd65dba51c0c1f7df5194047edd0bc59a12026dc5ba"
    "uk"
  end
  language "zh-TW" do
    sha256 "0ea42878b3ddb5b3cfef5c649d37122d88115af6c51b959ac8c69b2a2f0e1e4d"
    "zh-TW"
  end
  language "zh" do
    sha256 "99321f9decf46e6acac3bba341a5ab9091e472e37fd1428424f9ad14401d7aee"
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
