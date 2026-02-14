cask "thunderbird@daily" do
  version "149.0a1,2026-02-14-06-50-28"

  language "cs" do
    sha256 "8d43d6fc3135db472a8f2917b43930ce0bc3871d1ed1dc3edec2eb8088a6bcb9"
    "cs"
  end
  language "de" do
    sha256 "eaa6723cab2fc5673b3d5b412c281f18f73b78849719fe1082082278aaefc8cb"
    "de"
  end
  language "en-GB" do
    sha256 "84b523d415c8eeea2920f6f2a4d53e30aa6bfbd9ccf982b4e6e9a36973988b04"
    "en-GB"
  end
  language "en", default: true do
    sha256 "27e1645580609a27dc992805c40a83ad42f194b9b96d8b7e4749a3bc294d3476"
    "en-US"
  end
  language "fr" do
    sha256 "6bb5821862c36667f1a58688115f804270be74b9cc3b90ac4fd7f9e70fd43880"
    "fr"
  end
  language "gl" do
    sha256 "f381c31be5adb019ad780c44bf386dd117020633fb5897b4b4815119666c6175"
    "gl"
  end
  language "it" do
    sha256 "be35bea0359f905323b6b9147b04804641a600d137d19be4c19c4ffdf745f6f6"
    "it"
  end
  language "ja" do
    sha256 "45c2351511e43c42337a5b6d890d537b67a92ca56377c4b8cf7330370edb5ca6"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "b84b999fc2cd0ffb05757175e7e6f92765575d4404a54908e64d4be2c4af69b2"
    "nl"
  end
  language "pl" do
    sha256 "873847c2c01b22bab0a426a164b43c5cc6245d12d9b3e3fc0071f09afc49cfa5"
    "pl"
  end
  language "pt" do
    sha256 "e3fc70bef6e01e1d290e9ebcfd40949b996455ac515bcd2d0031ba67a973ccee"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "59e400443baae516092ba5bc55618923030318f6e2eab54bb5d21f36a435f539"
    "pt-BR"
  end
  language "ru" do
    sha256 "47e7fa5b47f08c7534acdf77ec894f8de685ea55f1a6185422a219d7622d47b9"
    "ru"
  end
  language "uk" do
    sha256 "dba8bb4df2889bb97d3d8c9b640c7bbaec771086a83dda32905ec21e718581cd"
    "uk"
  end
  language "zh-TW" do
    sha256 "b6706d9f17c628bb8316bfd920ccd7e69ad98c42ad2ea1dd7cb380a984153157"
    "zh-TW"
  end
  language "zh" do
    sha256 "7d41610336a084269f1d5a2ccfef581d95f31232c43e676e91d5b164a0e16fcd"
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
