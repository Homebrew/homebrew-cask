cask "thunderbird@daily" do
  version "143.0a1,2025-07-23-10-27-30"

  language "cs" do
    sha256 "a47e3614bbc5fec2f9c98436032257959122e7ec1c6871a5118673272c6ff16c"
    "cs"
  end
  language "de" do
    sha256 "27b143667a4718c87d9b6d2687e8220a0daf6bb7b7ce26c6eec31e54e95fd8a2"
    "de"
  end
  language "en-GB" do
    sha256 "b65d8caca69c9c28f5d4485ef59120e40fcc3e263ca54fb24adb185aaac10307"
    "en-GB"
  end
  language "en", default: true do
    sha256 "313f2ccbc5564c05b046148a93b9477b42d818f948abbd2b4dc394e923020606"
    "en-US"
  end
  language "fr" do
    sha256 "bbe6dd52e94ba1131a90e772c4b468d861aeb49a5a472973149aebf85ec81d17"
    "fr"
  end
  language "gl" do
    sha256 "c512ff5d9121bce188a581ca50da166411291463a065b80755b6b2824a22127d"
    "gl"
  end
  language "it" do
    sha256 "9bdfe598ea9c617ffdaea419003b1965ed4674417e25911ad8c05904937f8566"
    "it"
  end
  language "ja" do
    sha256 "4c275216727bafa8fbaab3a314d6140a9e8affe259bec9c44c67a53310131d12"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e5af73f516aaf25e02145b2e8f1757767e433c2c58a132b02558a50f7a365a87"
    "nl"
  end
  language "pl" do
    sha256 "312fb635e0de37fb988ebf078670ac8fcebadf080681a85476c7188ecf99a4db"
    "pl"
  end
  language "pt" do
    sha256 "c951e1103f07b62aadb838b9cdc0a39a7807c9f1efc620a786042255b2a72b72"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "6ef0af67b9c1634637d340b94d219813fd315640d446b6236b204e105197409f"
    "pt-BR"
  end
  language "ru" do
    sha256 "2b512d2c9b122bb5a55ef75c4424a47bfc9f8dc295bb85cd7e9aa97b0736f384"
    "ru"
  end
  language "uk" do
    sha256 "fbaa9582bc13a0c6328d66ddf9622fecdb24252104c4b571b972bc8dd34f9850"
    "uk"
  end
  language "zh-TW" do
    sha256 "7ecb3f0c61aa65a7c2098e6857ac8c2395b4b33c963aa00edb15a0965f4d9097"
    "zh-TW"
  end
  language "zh" do
    sha256 "4d486f37fec2bbc6eb8c3234a7ce80c50bb48065f724a3866f8e1b6aa88395b9"
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
