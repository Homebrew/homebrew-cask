cask "thunderbird@daily" do
  version "161.0a1,2026-10-30-09-24-47"

  language "cs" do
    sha256 "f46b1f4d4a55442a20b953eb1abfb0cd47a9dd1346df48cc51f34f52a2c64b46"
    "cs"
  end
  language "de" do
    sha256 "8a26cc8d4f6b6739e8b3f262667213df1d1bb40c5ac73a6444f551f41c96a98e"
    "de"
  end
  language "en-GB" do
    sha256 "f7481ba0db3dad8fffc58400508b57e9a9b8083340974e5988d7b4d9487e45e7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0213a699a0052c4c4cea2b2bc2f804c454c5e91a54ad4482cecbfd786f2f0ca0"
    "en-US"
  end
  language "fr" do
    sha256 "ee12e77c29e0e3b4dcc4d4db88fac91b65e0411da0f19f45c7be530c0ea1e72d"
    "fr"
  end
  language "gl" do
    sha256 "f357633263645f42a1b34658d2f95c9277357c16c59a761b4c256b5ec7dde151"
    "gl"
  end
  language "it" do
    sha256 "05196dc0c28813d1dd30cbd304d325c97cafa70f4a0ffae0af044b044a57a7c1"
    "it"
  end
  language "ja" do
    sha256 "d03f77a7b6133f67fd4c5af779347742636f8b650df36544db5c49b26a471516"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ffad11bcac044d77d8b5c3f578d44fffd2d5c89db8863861a4bce3b63f812b1d"
    "nl"
  end
  language "pl" do
    sha256 "cf930b08819f6094507e3fd11f2713d416b86468bbabbb78e1f92ee9e0b61499"
    "pl"
  end
  language "pt" do
    sha256 "5c7411dcfe5669dc6caf831ee32fa182cb835d6edfd7b4434b0f93e33c9c7e51"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "c39d6fcbb93041a781b7997372ba8bf777688e02c9c5983e4d5ff3ebcdb27436"
    "pt-BR"
  end
  language "ru" do
    sha256 "197ec597338ea8f63430ab1a020329519d459bc4bd5026ee03d21226debd4269"
    "ru"
  end
  language "uk" do
    sha256 "786dcd711133041f06758ef9d2fb3e6932e7ffe336ddd89022c3f92d234c1b78"
    "uk"
  end
  language "zh-TW" do
    sha256 "1fc26da8d7d0ef7942da4bd3c924081fbe7d4f5f079047906b474534f160db13"
    "zh-TW"
  end
  language "zh" do
    sha256 "68abb73b9fb6dc96c8ab898ebf74131f7e1b2c81a3b37ac0b092a8bf3886359e"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-comm-central#{"-l10n" if language != "en-US"}/thunderbird-#{version.csv.first}.#{language}.mac.dmg"
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
