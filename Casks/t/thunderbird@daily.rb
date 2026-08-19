cask "thunderbird@daily" do
  version "156.0a1,2026-08-19-10-26-33"

  language "cs" do
    sha256 "fd21173ab3eb0566c8df2f292eb09198076510da544c78f3f5f329c88487a9fb"
    "cs"
  end
  language "de" do
    sha256 "3a8af6f4fb823b1f3697d25eda683a560fd2a9a0ca781ec799a0d8e0922c5947"
    "de"
  end
  language "en-GB" do
    sha256 "8f96aabcc9fb37bb163dfac959f70d5402507db15eec61160aa349e809368c67"
    "en-GB"
  end
  language "en", default: true do
    sha256 "598ecc55baf83a4794d49878e4c9d14f5c19b6e1d5b531a8bdf68965d92d371c"
    "en-US"
  end
  language "fr" do
    sha256 "e0917f41ad29574f33ce9c705817ea04fe6f104f9fae2ecd62f3fac7654d782c"
    "fr"
  end
  language "gl" do
    sha256 "71924a4bb94c95fbe497a9b568c924a343bf58abbaa39c783e45bbe3c7c83519"
    "gl"
  end
  language "it" do
    sha256 "f44eeadfbda9e73d43b5213428c60af696189b8285e06d5e202a16f4a5c566cf"
    "it"
  end
  language "ja" do
    sha256 "3587bb59706914b82618eac41b3102a161af6014279000b512b820a52624ea47"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "fdb0c18040989302e1102fa8dd6555df123ca6038dbb1e6b725777d47725d555"
    "nl"
  end
  language "pl" do
    sha256 "1c69251a3905554030f2e39d764a8a2ae0c48afe4a6b6fa4747c0b02134c3bc2"
    "pl"
  end
  language "pt" do
    sha256 "a5edf88f70531a44ee332d62f16d4694673150a78112e9c62ec172029ffb0029"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "5bffa5fcd9b88f02748a6a5efdb9a748881956596a5b35a8f1015e813c39fe85"
    "pt-BR"
  end
  language "ru" do
    sha256 "c33b3e81d56d50f015a3477c845a9ede2e5f1884a8ba411d56a712a58b229a19"
    "ru"
  end
  language "uk" do
    sha256 "ed00c117c84ef0e6782460fa127f3d89220b10f1b34d964660de81e6acf9601f"
    "uk"
  end
  language "zh-TW" do
    sha256 "9cf8ef9e2f6ed74b437b157ac61c10d4882d1325d1f02e404860e885e3acb2fc"
    "zh-TW"
  end
  language "zh" do
    sha256 "8b9d84dea4876d7397523083201243e4adc2a799fc116bb1b3a593c8bc4bea1c"
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
