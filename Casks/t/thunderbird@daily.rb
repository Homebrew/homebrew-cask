cask "thunderbird@daily" do
  version "140.0a1,2025-05-07-10-23-29"

  language "cs" do
    sha256 "a7a3ab4f62f291d6ed656792e9ba65b2e649944514d7d77614916700f312b37d"
    "cs"
  end
  language "de" do
    sha256 "450a5cefca3a5f672fbc2fb34fa41f09036dd4b3f07a377bd8a77d000c214741"
    "de"
  end
  language "en-GB" do
    sha256 "fc2a28d3f1c959b42f9c75a43bf2952f08a7e12292429e69f27760ebf3601ed3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f376f6c35017dc2d14176211fb638130a809e79d2585dc6defbe6885e47e6e70"
    "en-US"
  end
  language "fr" do
    sha256 "b689c19ab66aaa340a6a88f327615a27ceb1e94ea3be9cbb4c8d2041a6d4e6ff"
    "fr"
  end
  language "gl" do
    sha256 "982869245e51ff473d40fb1d57cf4a520e0b917b40d0a851eba2592281148705"
    "gl"
  end
  language "it" do
    sha256 "3d0c52f39189c9cc7802c556962897aebef88fe3266626324ad8d2efe4b7abe3"
    "it"
  end
  language "ja" do
    sha256 "210e7a413a40307bc7c34cbe39f0b15e1e2c47df1f85ab24c75c3512051a6b76"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "52a289f3e5dba3bec1264d7b0975b4a7922a72c3bebe0f8bc5e565db6a1f1802"
    "nl"
  end
  language "pl" do
    sha256 "fb9e38e6044069733db43634ec802d3fe5511b3efd8eb6907c8045dd7e2f8b35"
    "pl"
  end
  language "pt" do
    sha256 "d2124703c56f47c1ec4aa26898d636d8dd02019761c999dae026db2e0bb19510"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "350308370b982c78a1225994648645552ff5b170512003248572f411e557f482"
    "pt-BR"
  end
  language "ru" do
    sha256 "410bbeee0e5ce93f4666376ed78ce030e917e2b75286505d23774fa77bcbb7d6"
    "ru"
  end
  language "uk" do
    sha256 "3344aa2a89b0309faefaaa7c7d4e370f74ae35cc6ef80a063e1319adc895de7e"
    "uk"
  end
  language "zh-TW" do
    sha256 "aa5b6f25f9f15669ae686e0fe06a4ccbbf2a198d43d9beb69f9735cedbf90297"
    "zh-TW"
  end
  language "zh" do
    sha256 "d717ed14892e6fc0c11ba332a934384945c00126f830592b29cdfdf8e39c189e"
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
