cask "thunderbird@daily" do
  version "150.0a1,2026-03-23-06-50-33"

  language "cs" do
    sha256 "1f3d16900612c5833749d494ee7d581622b20be49116c488ebf8bdef00c9517c"
    "cs"
  end
  language "de" do
    sha256 "378fcb49f64f6c0f0d49d3aba2aeec7694ec0c3a6c1763966c886d6edb94e491"
    "de"
  end
  language "en-GB" do
    sha256 "3949668d6a8f302b528a1a61d0ff2155b95141390c84e30cf77eddf52748b9dd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b8f34860963db999d32b2358c5e3fccf993bb51ff33aadbe12947d991d8bd53f"
    "en-US"
  end
  language "fr" do
    sha256 "311456595b7b828fd023893d5f3cc8f40552aae0d78ab23d8785ece5fec4a7e2"
    "fr"
  end
  language "gl" do
    sha256 "9069d6ab1ae10ef633484150ba3a43bfe95c5d30f7267b39458e6c78b9f3453d"
    "gl"
  end
  language "it" do
    sha256 "80c53a6c1c29e0d34e408d4de35900753dc9edcf321ff8b3fddf33002585b4ae"
    "it"
  end
  language "ja" do
    sha256 "0aec64ab9b390472f94f0ba9c929bb36f051bd8a143fd8c09ca03c09403f1e5c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "03012dd4161d2b0753e091fa50152baecc7345d0089837a69fb615edae7eb2ff"
    "nl"
  end
  language "pl" do
    sha256 "20b0df692ba2c96072406c14a01424b437c141f926c248f4dd5130bc7d7af35c"
    "pl"
  end
  language "pt" do
    sha256 "174319b06119afebf63b478ad1f066b27b8a493f580f487aeffd4657a92ec0bc"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "3e3ea22b661cb759889bd4fd7bd53f593eed3dcdf387b65522a4d1aa8587d84e"
    "pt-BR"
  end
  language "ru" do
    sha256 "6d645ad6e8ebdefc6b040c303355bf86e498525aafcbe79b285b7dbfafe196c2"
    "ru"
  end
  language "uk" do
    sha256 "6ffbd58a13e411be6e427963dabf3e2ad5a6eeb33ba43679b54f6469e9a608f0"
    "uk"
  end
  language "zh-TW" do
    sha256 "acfda468adf5ed94f7e4d109e7b0c47aa65fff5a110a750e7b015c774f2a7a26"
    "zh-TW"
  end
  language "zh" do
    sha256 "7331cc3695bfa33a8c7ee43fac2f9dcec0b954264d07d89eb3bf2d0578277227"
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
