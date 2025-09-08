cask "thunderbird@daily" do
  version "144.0a1,2025-09-08-08-37-05"

  language "cs" do
    sha256 "74859d367f06c57d7081ab1160e3e55d00ac45b0d394306376f8a85dbd79b87b"
    "cs"
  end
  language "de" do
    sha256 "ce63d56f8b0e5f1f17e2eff11625521b19949a6bde02d298e905af289c004ad7"
    "de"
  end
  language "en-GB" do
    sha256 "12a02e44a0dfd3aed91067f8a238f665a565644c9287cbae17595cb4a7be92e1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "df9fd26545a60dd8938a20a5b49e779921fd286a52f1bbe569c483a2a8425c2b"
    "en-US"
  end
  language "fr" do
    sha256 "0151739c11445b3ea1436461ff1e0ccc3e3b8d59d4ba03983eb2674f8dd23845"
    "fr"
  end
  language "gl" do
    sha256 "f28ecb0ab679b7a47d28c80a5d8687a83ac202de7adeb42c1873c95c95d9cab6"
    "gl"
  end
  language "it" do
    sha256 "98e29211f5fd9e108dedc2e14aa6b75db3f097dbb3bbc16b11a9a4c65d60caaf"
    "it"
  end
  language "ja" do
    sha256 "8df74ca380082a8bf761af5ef315de7e7548a6528e91079747b7dd60786c9d08"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "dcf60cecca4666e841503bdbffaad9e1621fff584479bacd03870e94de6dbea8"
    "nl"
  end
  language "pl" do
    sha256 "5936ffba403ddfcd9e29ffb6d70e1f4469d90b02740a6cef3fa85feece2059c9"
    "pl"
  end
  language "pt" do
    sha256 "74de937ca0cab09fe56c4bff4473d2f52136f6f54c63f08fe539695e91a9ae96"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "9659a8879d9bf46f0ef6af65554476cb56725382fbecefea0ade46cd8c7f32e3"
    "pt-BR"
  end
  language "ru" do
    sha256 "d96191d8994aa86ba69cd38b45279395b555461e58560b8bcb16a9704a33e01d"
    "ru"
  end
  language "uk" do
    sha256 "de2fe22e3d63c9a1847960bb315c89bc266d0a67f182fe68d32f91e7da1b3dd4"
    "uk"
  end
  language "zh-TW" do
    sha256 "b1deb286c94f0f05c27eb1bf84271fcab1d03cdb0edb74f3b848b00d074c54bb"
    "zh-TW"
  end
  language "zh" do
    sha256 "c74fe091a67b833375d6448b43d6e92845f4707e1d8ab5a98c7a69d29bd9db41"
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
