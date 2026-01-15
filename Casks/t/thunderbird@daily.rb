cask "thunderbird@daily" do
  version "149.0a1,2026-01-15-09-52-54"

  language "cs" do
    sha256 "bf35db8999816771b9deea8d4b387445ab4027c9e3ed4972690d03cd7736670e"
    "cs"
  end
  language "de" do
    sha256 "9c85b960a5b199b24256fc34c9384008fabe2643a9dda1509867eed057811f51"
    "de"
  end
  language "en-GB" do
    sha256 "ecc4725f055b15c7dcd8292856bc98a6a081a51ecbf7300a58933522dd423f59"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b84cd05855a71c57b858ba6953a6522d703941619024dcc2e853116dee80095c"
    "en-US"
  end
  language "fr" do
    sha256 "42da5b768c61d0a2ecc6855b265182c0336ca1d68b3386377e288c40de1f86c6"
    "fr"
  end
  language "gl" do
    sha256 "c20386c9435d431c1a3835750e386602b463bfe6a3a3f5e5f9617a909c816273"
    "gl"
  end
  language "it" do
    sha256 "06fdcc3b1e4e50192e66b189d15ae26fce2e73dea8453a74bcab32c37d73c3ab"
    "it"
  end
  language "ja" do
    sha256 "be742c1a6333d2d6332350c6c39c186bb7eece299c93a19a925ece75e36f1ad4"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c5682d2d7e91b395454c95145f9fd1b16c553875a6e45dabbd63da1d575ce200"
    "nl"
  end
  language "pl" do
    sha256 "28d5cd04cd973709ac8cb1129cc43e72759f38cd5487ddd2c886f84380b7f977"
    "pl"
  end
  language "pt" do
    sha256 "5f8b3a47f5724a4d7315473873614717a839317fb809325788851e35bc970ff1"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "9bf833669c4bcf6ad2ee88f6c624bb553e3a08d062ec38a7c7fd9d59f9d9b17a"
    "pt-BR"
  end
  language "ru" do
    sha256 "d72f95d5ce97cc2791391c46f4bacec558cadcfd9a19771d899ba9f2d3113956"
    "ru"
  end
  language "uk" do
    sha256 "86f881611f01d3406f187feba2f540e567c7952f1cc8a201c7573fbb7c13c2b9"
    "uk"
  end
  language "zh-TW" do
    sha256 "c60075da305da9da4c751a1995d35a7926d1f0b2e75dc04db40e5cdceef37cb3"
    "zh-TW"
  end
  language "zh" do
    sha256 "d64914511281fec529bf18c8f3de36ea2b02466c3d79dd2f48966aac10bf76da"
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
