cask "thunderbird@daily" do
  version "157.0a1,2026-08-29-10-08-15"

  language "cs" do
    sha256 "03c20245f09b45053e2d635270a2d51c5fbb0b5e07270a58ee76e737b5a59d60"
    "cs"
  end
  language "de" do
    sha256 "52e6ae13cffb995edadd7e23ee0ebd4522f002c6f4085f80884e3a85ae39c401"
    "de"
  end
  language "en-GB" do
    sha256 "466d24001aaa9bba8e587d6d0f7bf37964e50594ad48a0d052b2399f666dc16e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c436855ef49e17215971bd308ab6dc0bc129509e34f55ef53fb8dd998afdc2c9"
    "en-US"
  end
  language "fr" do
    sha256 "8f3af2fd0023a21c6142e0c10c086bef255aa6ec5fbf380df5035826d6a3d035"
    "fr"
  end
  language "gl" do
    sha256 "73384542b4d825cb57974c883f62afb28fb4a1d3f09c6751743c5ef47ddece27"
    "gl"
  end
  language "it" do
    sha256 "0a5e7198785b4cd6fedeabff1f393c603a07a4ae72897df4959bf607b428b07f"
    "it"
  end
  language "ja" do
    sha256 "c98207c0e506830ead431c44e58234bfeb356d4b85ea74fd15a56eeb3c984dcd"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "a243d66f54c16239b6895e70e3f005d945acbe2458853a41d34b13b72dbedf12"
    "nl"
  end
  language "pl" do
    sha256 "ff3d08ef80dd581604c848a344656631b50771d71b638fcef48901f7c4ee713b"
    "pl"
  end
  language "pt" do
    sha256 "8e113cece3f542ce56489303a4cce2d5dd47abdc6480461f50be5506c81722f8"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "3b4a98606266e367217e27953f79da63298194164a5dc0d49d1e180a46cf76ad"
    "pt-BR"
  end
  language "ru" do
    sha256 "25d0b222d122f3e2a77116a98db290b4792a08f6cb2ff713a8eb37d78523409b"
    "ru"
  end
  language "uk" do
    sha256 "1e6b33421ea86f5fa9d4a017f40fe06dd0637be575e85adaa66733d439306904"
    "uk"
  end
  language "zh-TW" do
    sha256 "9a6d06277deff257b41342418f70222f39bfbebc63f11f3120df37ec5766b825"
    "zh-TW"
  end
  language "zh" do
    sha256 "c2bf883187d5ec2303fc8cb207dda87ee8f332837efb9e5cd267ca558015a98d"
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
