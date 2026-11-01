cask "thunderbird@daily" do
  version "161.0a1,2026-11-01-09-08-50"

  language "cs" do
    sha256 "4673675198c08a1a793f22532d9887379cfd28c6dd83444a14193bd2a97952b5"
    "cs"
  end
  language "de" do
    sha256 "b8530d5a9188755ae9ae1d644c4f4c96b7e7d188b392a947915329dfde53e365"
    "de"
  end
  language "en-GB" do
    sha256 "44d6e315f5421d7abff5532215d29e3930a901c9b33ba7b2260152f2b2fabed3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a8b35d9fcf3a5a4e748f7829a4ac412d9c713bf730c1721f97909a8d30263510"
    "en-US"
  end
  language "fr" do
    sha256 "af695e7473c67ffbd4c61f8d0371a74e457688b1015402dc62c1a7cd62d0b6e9"
    "fr"
  end
  language "gl" do
    sha256 "f7962576ab3c4afedf6b97c6f86283716f60ce2d954f2dca9e9dc5691416e9e7"
    "gl"
  end
  language "it" do
    sha256 "e4b9158ecaec22288789b3eab0b1a62e634c89ca2f55c2353783ffe8863ce178"
    "it"
  end
  language "ja" do
    sha256 "019efbbb9fe2a1852836f44e33a986c7e0d738ae374dc101e24d67b15a4938ec"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c0521f3d312c5480d8fb08e203b4bb32dac29355c69fa69e946630f69bfa9944"
    "nl"
  end
  language "pl" do
    sha256 "1e0638964a903651fcbe50f49613e7d598681cf6837f31fc9c812147444c2dce"
    "pl"
  end
  language "pt" do
    sha256 "144fe981f95b219ecca50f55c11b5712c65f8a6f8437e0ba5f6cf7a828bbe23b"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "10aa0ead54c29700c18529e13bb1e2b16cab5703960416db87cc2e7083f40569"
    "pt-BR"
  end
  language "ru" do
    sha256 "5aba4bd497dec2696e946d3195659098189ce433741a74c9d5d831c518957d51"
    "ru"
  end
  language "uk" do
    sha256 "56fdf7d32006986c44a8ce3ab1304cd0c092efc7800160b52cc248c11946b3c2"
    "uk"
  end
  language "zh-TW" do
    sha256 "0b3e980b620e8229a04e1b92959277c5ef6ba13f8ebb1dffeb9e5919c9b93ff3"
    "zh-TW"
  end
  language "zh" do
    sha256 "d324712f524babf7d196ef912d0c5356541694dac586efbafa474d08cb106e71"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-comm-central#{"-l10n" if language != "en-US"}/thunderbird-#{version.csv.first}.#{language}.mac.dmg"
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

  uninstall quit: "org.mozilla.thunderbird-daily"

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
