cask "thunderbird@daily" do
  version "148.0a1,2025-12-10-10-29-18"

  language "cs" do
    sha256 "88a0f9278184b24f68df22e6d42a5642690b3f5930a55ab10df9dc911777e091"
    "cs"
  end
  language "de" do
    sha256 "a0d9b89648ab635ec8438db320635774a96f6df43072a87e6c5de95f28c30400"
    "de"
  end
  language "en-GB" do
    sha256 "a6d21c24b48045a982b5f7aea850329a11586c3fc0a6550397f8e8549d20607f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1276968bfa668be7dcdb07be5d7466368a11381663b28ccb0d8d336500c1346e"
    "en-US"
  end
  language "fr" do
    sha256 "b2eababb6d9be2529d913616ecd28b29ca9f2d91f5e6202ec7f9af15e4ebb0e0"
    "fr"
  end
  language "gl" do
    sha256 "ef04412a973cefa027d97b874e1d30e492fe7b50df23c92ad1d36d6bc4a14a76"
    "gl"
  end
  language "it" do
    sha256 "3c637050bc2832b8f005558d93ace485afa62ab299c0f14dca871846b36f6600"
    "it"
  end
  language "ja" do
    sha256 "ebcf11127a43fa8c5c44eb1fe64913584f50cb6860ddebedc1be260e4f46d464"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "38ece87d681734c97c2dc127ab10fbd38966b60b07809c9ea93c06a510e295b3"
    "nl"
  end
  language "pl" do
    sha256 "bfe30305f734dbe7a71dd4d865c72389dad5499c281e7a0fa7a4dcb0ba017cc1"
    "pl"
  end
  language "pt" do
    sha256 "4b8beb6ebe31e2eb1b5e77da614612bf325b9677fdc8e74856ff8412cd965b7e"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "3e88b790d0457fec6f60e27cce27f6318742510d833adb9c2ae9f153f5400fe2"
    "pt-BR"
  end
  language "ru" do
    sha256 "80377cac86d8a2e507932d26ac2ff944037a805fb21d29dba2466ea9b51d649f"
    "ru"
  end
  language "uk" do
    sha256 "4e8799831d9029f840191ea2d3dddebb7a1b7e3043a178c8d26d97f96f31ce47"
    "uk"
  end
  language "zh-TW" do
    sha256 "4e388d0a809e9946b5081bfb5a4d3769c6a3b2bd4e5fb231ee692845ae2ae779"
    "zh-TW"
  end
  language "zh" do
    sha256 "2f0fb8c87ccf3d8741aa8e707b0a5b49cf7f25d1bad76ee98947afce62226594"
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
