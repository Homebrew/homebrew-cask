cask "thunderbird@daily" do
  version "141.0a1,2025-06-08-10-26-24"

  language "cs" do
    sha256 "5051c6437e0dbd1b2e3d318fcd926f8d10cc9e3d147ae644a61045f1afd6c37f"
    "cs"
  end
  language "de" do
    sha256 "f2fb602c1df6f986782743a278c9a7d349faafc4134447bbd416e631e3e17f89"
    "de"
  end
  language "en-GB" do
    sha256 "195bbf1fd9f63ccd8256b18096accfc41fe6eba5bc283dc0229c4d137d464f9d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5f66acee6bf9f86f40d551bcbc2a913fd0ba19f787feab4cd24f3c2fca64c8b4"
    "en-US"
  end
  language "fr" do
    sha256 "81d8470ededa2cb7dabba8cca0fee88c399606dd3a259ccd86d807afc812c678"
    "fr"
  end
  language "gl" do
    sha256 "41fb2eeb7744667af36e2e5262ecb1dcfd8dd4d56f1f50256dde8febd2deabff"
    "gl"
  end
  language "it" do
    sha256 "d43fc5942e1f9b5091e135f05a4722e5fdaa2b9c8625bab4338f922b075121e2"
    "it"
  end
  language "ja" do
    sha256 "967cfff7819f6563788faae9829f86a6e55138caf6184159bc854492c489aa0d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c6286702dca2efbec98dc47c696eb415bb8bb6cd8d2eec18f0906cf87cbabc97"
    "nl"
  end
  language "pl" do
    sha256 "0d5ec24695e6ce1dac501954085c8bb0f4340007648f9ba862c43f8abcb6bb09"
    "pl"
  end
  language "pt" do
    sha256 "863de921e516646bab9d3d9dbdcec4f8cd2b11b3e1110a55c31f427783662040"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "b233085c38940e87be1a74be1c960a0045eaa294d1cb40200d3f6ffbaa3f428b"
    "pt-BR"
  end
  language "ru" do
    sha256 "9121c908cf87174996de2b03970ec6f1d12c151cd9d46a8d1470f0e75db43f3d"
    "ru"
  end
  language "uk" do
    sha256 "f3ad7a8d26a7fbc45c3132c38595d82faee50af264c812612a16920fc6bd3f3d"
    "uk"
  end
  language "zh-TW" do
    sha256 "e451bf70f6b6c4d68911fa591ea5ef6f7b0494b9f61121dd028a06b801670345"
    "zh-TW"
  end
  language "zh" do
    sha256 "633ba15dec3f5e0398d725fbd83f6678fc44afec1831a154c8d0333678b10960"
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
