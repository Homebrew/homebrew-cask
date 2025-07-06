cask "thunderbird@daily" do
  version "142.0a1,2025-07-05-22-04-13"

  language "cs" do
    sha256 "afdf107d5b0e281a194168b1fa7c5bd7a9ca69434dfca643f5b76b4f166e86bc"
    "cs"
  end
  language "de" do
    sha256 "0786f98f2bca04481dc10f89ee67c4d85704c5a9544ad3c3ea2de0cc4d190486"
    "de"
  end
  language "en-GB" do
    sha256 "4ce2f0c562e5bc20c6670b08bc7015eaf7babd966a0a3e8b6479249fdb022c65"
    "en-GB"
  end
  language "en", default: true do
    sha256 "94cddb071300dc9b8500b3c37944d3c21ed9abd2b1abcbacf46acd3e91d1a345"
    "en-US"
  end
  language "fr" do
    sha256 "f6b6074044262852b1d1e0ff7e3be71550837080bbc2e232a7940f7274f43b8e"
    "fr"
  end
  language "gl" do
    sha256 "b9842e65f44d8e27ca58cf10517b3de91238bf36a335cec944591ac825758002"
    "gl"
  end
  language "it" do
    sha256 "9d458db5b28390d797ec9310250b39ad8bf35a571e16e71063ea38507e6713bb"
    "it"
  end
  language "ja" do
    sha256 "d3860c07100484c60e23ce3430360ba117b29ddab44fccf521cc25a95175b081"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "5764cf041986022badd50ee16350c02e8883c380ea185d6148d78cfc5218d0e8"
    "nl"
  end
  language "pl" do
    sha256 "dc1bc50475a1e70b606a7a4a523c7070658ccc2a499b67606273c69b5ed80169"
    "pl"
  end
  language "pt" do
    sha256 "fdea1ed37754b48da73e4c62b476e9dc4f3534a6732ad00c332452be44e215de"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "b05b58396563ab8cece9560bf9d8bba4dbb7f7d031eec45386bb7a3de24dd8f0"
    "pt-BR"
  end
  language "ru" do
    sha256 "9683e56949471f2401f3c9f1d67d718ea5c8628e3a72d1e530146b18fe1fecfd"
    "ru"
  end
  language "uk" do
    sha256 "7abdd78011eb4beb0d84f42d5295b3ab4671af51691cefc973a9c03e8aae5f29"
    "uk"
  end
  language "zh-TW" do
    sha256 "1e81c8c893382e3ed29364e919b555444a131d9b791b91d063fe789394cad354"
    "zh-TW"
  end
  language "zh" do
    sha256 "50d52d432616751967476ca3eb35b433ac8f18f24f14be292db46f6a5908e671"
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
