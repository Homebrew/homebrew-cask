cask "thunderbird@daily" do
  version "154.0a1,2026-06-18-10-28-28"

  language "cs" do
    sha256 "beac31402791bfbb3116a94467e1e6232f200792f98bfc6cbe6774e3b97349e3"
    "cs"
  end
  language "de" do
    sha256 "6d0f561a34f96d5429eac4d01c345f8e760f73143afcc8495c79f556ed5ed4d8"
    "de"
  end
  language "en-GB" do
    sha256 "15a6e2ec3e48961d79a54bca17cb83f7b67f1b556ebc899f6fcfd8c38bb7df36"
    "en-GB"
  end
  language "en", default: true do
    sha256 "71a36380b905509f92b4c830da6aa6607ed25077c150f2bebdd2de6f1cef05bf"
    "en-US"
  end
  language "fr" do
    sha256 "1695761789add485098b73144f6865ed3d08ce7cacf46de34af0f19c40d498cc"
    "fr"
  end
  language "gl" do
    sha256 "232302a0a6e535e4d92b1a641046ba2d998b97412323a41fe3778f5171d7623c"
    "gl"
  end
  language "it" do
    sha256 "cb746d28a43ec0fd11015164617a3af3b855a20de594289983c774ba40ca8af4"
    "it"
  end
  language "ja" do
    sha256 "a260b305f419a43c522066d85431de2a40f6ae5a8f8d9f44539a7133d3a82f5a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "209d0fdd363caf531cc00ee35bf1aa1d0e7112847ff2e87c810d925c887fcc97"
    "nl"
  end
  language "pl" do
    sha256 "812a835b4e1e207c07540d8c396c7ae7b0dfb54954db48c10dd21d54361ae200"
    "pl"
  end
  language "pt" do
    sha256 "766b1661e836b281cb5a5f61c1e118c4de599af3df9b5c6722fa60a915663a02"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "5f0aa9622ac16d6c1e45492f2bd19c704caa3d8ccc126baf0eb6aadb4598e263"
    "pt-BR"
  end
  language "ru" do
    sha256 "5d38cec8e8b383d4382cf83bcaacc47fd1d458c3369f72fdb1b44fdbbc9aaff8"
    "ru"
  end
  language "uk" do
    sha256 "64336762807a490aba4f64cec1e841430b2ce026bd4496b3f0269050bc6461d3"
    "uk"
  end
  language "zh-TW" do
    sha256 "4c0e84eb69f5384dddea01f8f1ae35b4336d51f60df01c585b65826221d5d757"
    "zh-TW"
  end
  language "zh" do
    sha256 "d3c93d76ba6133bbe469b22d399834a06c46efbc69f69fe0b2a3f3fe779d34b6"
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
