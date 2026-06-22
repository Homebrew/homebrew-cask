cask "thunderbird@daily" do
  version "154.0a1,2026-06-22-10-47-03"

  language "cs" do
    sha256 "4166a4f4361016df679ef3c5e45bf1e6db1ed5727f59b02805ffe876eec1f05b"
    "cs"
  end
  language "de" do
    sha256 "6ee6326c0e2575f1af7ff71177febac96c9f80f3b0e307a260e37171147625ba"
    "de"
  end
  language "en-GB" do
    sha256 "0b67fe33c96d90556056ffb00ab5a42e7e54b300331693e47527a43c4ff66907"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2c886620a567cd121ae71e634dee4be7b5de07a92ec9145b0ebc8f19160e65a2"
    "en-US"
  end
  language "fr" do
    sha256 "f81e1c8c1cd162ea50a9d49de5c690467db0ff20e614f0e6555cf414e17ff169"
    "fr"
  end
  language "gl" do
    sha256 "9f23a7e5cf41b20de3526344e2598e83032c0b8afa6d38d6e532e3861e9c9646"
    "gl"
  end
  language "it" do
    sha256 "acdec1b1acae38e1affd85850d98ffe1b4f82c90d5987d4941bfa50fcbc32b25"
    "it"
  end
  language "ja" do
    sha256 "0eba38002f34a29432ac5c8e03ea1beb649daba3ff931ac40265a93bd0a343bb"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "2b46dde114de64da810460487f9fd1dffe4a0b1cea84258c5165647582558d32"
    "nl"
  end
  language "pl" do
    sha256 "4b27d3e3260c7c0a03f7f89fdb27673f6b6bb798ae0c92e12cff9bcf09f5f9d0"
    "pl"
  end
  language "pt" do
    sha256 "5483981fe367d8784a12794c7a1224dd6812393dd650ef2bf6720e683671929d"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "697b610b21176cc7c7e350e0a534aed6198269d632bfd9e699853b86c3b4e66f"
    "pt-BR"
  end
  language "ru" do
    sha256 "e666c3e16cd4e622c95d6046fb3efb3127ecaa2e38ddda14156bd290011666c8"
    "ru"
  end
  language "uk" do
    sha256 "87cb761ac4a709cd81c89e37fdc0b3ec4b87fff34a973f36154de0bff8445598"
    "uk"
  end
  language "zh-TW" do
    sha256 "36ee937c17d9f2193f9fbbf3042667fab5c9661e107f339d0f417f81210f2945"
    "zh-TW"
  end
  language "zh" do
    sha256 "668686ea674c9c9bc5813bc3f5d82b335d99976cdef58a84dc83e94c6c6ae7b4"
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
