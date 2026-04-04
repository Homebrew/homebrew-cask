cask "thunderbird@daily" do
  version "151.0a1,2026-04-04-10-03-40"

  language "cs" do
    sha256 "b3efa89708cc07d1628919a138376df03bacba2abe9777e74ac98a85b122c0e4"
    "cs"
  end
  language "de" do
    sha256 "c4520765a23c0418319c89e6f0c1fe0e19ba244dd845df801f2479671c7d6610"
    "de"
  end
  language "en-GB" do
    sha256 "63cba21d5f07277631ed911e40cc28094290da2cc99fb09f7295ac3c466e8686"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d63541b720f31a8feacefcb5d95906f60b4f32b821620f84b2bbf78b0f0caa66"
    "en-US"
  end
  language "fr" do
    sha256 "388cd1217eebbdcaa6ee35f0385925766655b9fd5d6721f2c4b674aeaf480715"
    "fr"
  end
  language "gl" do
    sha256 "77d6b6277bc9c991c9f9774780b3bc1119f706d20dae63dd6be76950dde88038"
    "gl"
  end
  language "it" do
    sha256 "cf3926a1b08ddf7b8fefab08312b428c547344345ba32449728d54d0e2794de5"
    "it"
  end
  language "ja" do
    sha256 "24aedb608afe2c48bb71a7e5cee2f841e33e5faf80e4d94cf2461d0f617037f2"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "0862abf1c389c96eef3aed7e12afe15fdadf9e599ec06411037dae8bca4a598c"
    "nl"
  end
  language "pl" do
    sha256 "8bbab30ebaba55703dd745a43a3fccfe3767c0677bc5bcf6761aaa77d01a5a23"
    "pl"
  end
  language "pt" do
    sha256 "03948d0cea0487551909bf903bd7c218cd5c5acf771b969a7e8ad1d12fa41675"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "7824f6fed63e303164a991d28e554351c0077dd13e4b603a4589e6ed29f35bf2"
    "pt-BR"
  end
  language "ru" do
    sha256 "cbc009caae3cd8975d9483a728f8a64509f1ac9da4d4e265426c2e36ad342746"
    "ru"
  end
  language "uk" do
    sha256 "b1a955e70a099f952d96eeb8311aeeeb305d07c07a8e25a4ae1826438c107609"
    "uk"
  end
  language "zh-TW" do
    sha256 "71e3a4e3cd1251a903c67f4a51e344c9a2802d95c4db262a3d7e10d7f8422956"
    "zh-TW"
  end
  language "zh" do
    sha256 "d6ae1b9fe2b4552763109dc164af7c4bdc5a1f89bf728c661d5f1671f0fdd30f"
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
