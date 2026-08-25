cask "thunderbird@daily" do
  version "156.0a1,2026-08-25-09-41-13"

  language "cs" do
    sha256 "20ae9ce86eea5326b77fa97eaaff45695c8c6e36f334a68eafbd2a7fd59f71fd"
    "cs"
  end
  language "de" do
    sha256 "77ccedfc3b78c56585440b7a22eeb8c396120b4f67798ea11a8c83416dd84328"
    "de"
  end
  language "en-GB" do
    sha256 "03859a01382e44d64de08cf7fea2694d51498d3fd061e5b97091bbeef8b12447"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2fdde9f2b3aeb3b7165318f9527864dc98706d2abc101fb1c37b353b061ecf01"
    "en-US"
  end
  language "fr" do
    sha256 "4bc100a1cc3e2c1b6765b5e738032238c9d4df025255509702703ec91fc01666"
    "fr"
  end
  language "gl" do
    sha256 "a069cadff4ed242798b47cc78e4c04354e757936ee7eb6c297fcbf093580548a"
    "gl"
  end
  language "it" do
    sha256 "be6dbff9ad1aa1d5678118da6efe29036f47172655654fb630dbefa949571ae1"
    "it"
  end
  language "ja" do
    sha256 "0ceb576dd52b931abae0ceaa354813bdec4ee83a27a00c61ee5f7a3f12e67a65"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e8ae10c18b321afa149c859c0552864affc14e73589f5b6353488830a2c17c55"
    "nl"
  end
  language "pl" do
    sha256 "b4031dd7068a9ebdc74a1ad1f285de441d5fc6a919bb58814be1322601685ab8"
    "pl"
  end
  language "pt" do
    sha256 "bfcb964a8680a1b74a6f40d7937066adf06a79ff936f96b8cad174caaa546c79"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "d37d26277dbd8c24ceea1f39a803d1d914debe38073ea6a3eb5468d178bca7e3"
    "pt-BR"
  end
  language "ru" do
    sha256 "9340ba3e026e4adb27c0d2eaf2fd9e91c8bbb801bee1bf4759091eb5abf6cac8"
    "ru"
  end
  language "uk" do
    sha256 "82dce811154abee8605c435b7d1f2a9acb289f2cf2cbf1e917dfe5710cdcacf5"
    "uk"
  end
  language "zh-TW" do
    sha256 "610042f75db6546dc45e22d1f3121825f230a1f85f5a4523d44265ba66f5c185"
    "zh-TW"
  end
  language "zh" do
    sha256 "95f767ac99a6910b9b523b3536d3968eb9411615358f303f86622efd4f2df318"
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
