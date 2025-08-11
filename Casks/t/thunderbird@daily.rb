cask "thunderbird@daily" do
  version "143.0a1,2025-08-11-09-54-31"

  language "cs" do
    sha256 "961c0672bf1a2477dda071523ef6ea3687836ba8d4328234b1c27f9d713303d9"
    "cs"
  end
  language "de" do
    sha256 "d212b8ce0594019bcd5a25b0c4758a5b08a45648fa2540dd63c4c9bd06d454d1"
    "de"
  end
  language "en-GB" do
    sha256 "2b5a69cbb1549ca71f2bea9aff9fe8aaa8e7e1229911c703e7be9f5ea1d4cd03"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d1a21ef1e1b98655b65afc8b4f1746f1151900f0c4dfe218225a00607df6cae1"
    "en-US"
  end
  language "fr" do
    sha256 "8797bfc48f56d5647ccc862d83caba481738c60aed76d49a5ae4515a87f1d2ee"
    "fr"
  end
  language "gl" do
    sha256 "9d27398c859f3b094618ff10860006db6f7fa708bde6eac031117331c4a55f26"
    "gl"
  end
  language "it" do
    sha256 "8ce1d0f66bc686af65b18940bff5cd3a68dfe9ce2d8c6e75a3fedc912c81ebdd"
    "it"
  end
  language "ja" do
    sha256 "a9fd4020f2e9114259a749634e444df64a3a844fd29840ca5454adc2d12d9162"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "6009ff396a43c5f1ac6e5d08567498d473d16887c23b4c20b8d19da9e20fd26c"
    "nl"
  end
  language "pl" do
    sha256 "5b1ad46d31fe4cab6ff2f55ee9aaf3537afc36f4362e5b3b4f4af4d136ba4486"
    "pl"
  end
  language "pt" do
    sha256 "6f42e6e93d15b645f76bd95484f24f6220ab2a67b4914f5cdde1b9013ac02dcc"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "b38abd05dfd15af004260c337d4315694ad912ded0a981aa7dbbc1403cd8a344"
    "pt-BR"
  end
  language "ru" do
    sha256 "329463ab6889aaded7f4595ae4d7d8f435fdf9a9d9286110b16cf050d4d26e11"
    "ru"
  end
  language "uk" do
    sha256 "c5e33a4b2b13ccd37af857dc01612bc3ae4e93ce03fe7821f0d7ac11c3a7e753"
    "uk"
  end
  language "zh-TW" do
    sha256 "3f32491505d44937905d36ed38dfe45bcfeb752c6426f59091f3bb238817734a"
    "zh-TW"
  end
  language "zh" do
    sha256 "c4dcfd8ddd72af04e947422ff369d61f4182eef5f84d442c466fe644b69f524a"
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
