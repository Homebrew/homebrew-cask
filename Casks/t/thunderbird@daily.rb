cask "thunderbird@daily" do
  version "155.0a1,2026-07-22-10-38-50"

  language "cs" do
    sha256 "b035413ff9033caa9bfb8a81229dac03b52e2cfb766387cc578932fe80e858a9"
    "cs"
  end
  language "de" do
    sha256 "537f95dd2ad14c99e5df36d1b38dae46b8e30f8163e5ccf1d74dd9afa67743d7"
    "de"
  end
  language "en-GB" do
    sha256 "97672d9a1e00fa54b1019e063d003cdbf8adf03d16ea6aa005269e6ab361fb95"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d8fbca3719d0c034dc8e7fc8e50651a05715022e53b5423aed7ca5f968125b0e"
    "en-US"
  end
  language "fr" do
    sha256 "3c001345bf42449556777088f0c73575f1c41a1c575ac4856d8343c3d307d2c2"
    "fr"
  end
  language "gl" do
    sha256 "fe1d112e77dc3496743ecded555a906e669c5fec6edba4b51c89a68a344de861"
    "gl"
  end
  language "it" do
    sha256 "a2b72a3e3ceb9600d12e4ba77b349c30f4af69f04cf0016e4f1f6d1185e05abc"
    "it"
  end
  language "ja" do
    sha256 "04ad6c84603db1e50cf98e6d6ee51e4251267163399ad4f186967ec7e50617bb"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "acdd578c32784677133d2a0432c3db197e169929b4c001803dc52e20b48b0887"
    "nl"
  end
  language "pl" do
    sha256 "75a72180a74136f46295c536a4e4f56d1dcba1e36a97cec6d0c2bd3446ad7ea8"
    "pl"
  end
  language "pt" do
    sha256 "bd0ffd9afcd219f7fc5f208811933f2f6719cb93dc7c9a25c2ac63e26198f468"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "c7b278a4e6d86505e9735d32a8a652f3565d30b75bfafc64a59f195410880a5e"
    "pt-BR"
  end
  language "ru" do
    sha256 "6176c0268488338d566464f43c35e62034e81605293d1c11855ead3de8d18ee9"
    "ru"
  end
  language "uk" do
    sha256 "cb99bcb76cde67620f6f9fd4f9508a787c68c6b93321405b33dae278e46dd918"
    "uk"
  end
  language "zh-TW" do
    sha256 "5f436e371629b0a0114efae9151948a75f7b4082bc8111c2eb916e283f6ec7ec"
    "zh-TW"
  end
  language "zh" do
    sha256 "605680989ac81a26ac604e511dfc81e407474f1c7ae913d9ff3069e52589de57"
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
