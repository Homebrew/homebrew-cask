cask "thunderbird@daily" do
  version "144.0a1,2025-08-25-09-32-53"

  language "cs" do
    sha256 "5b46f7193f731a0f46b5c2259bd31f5cff698e6fa7ef20ad353e7ef8c6ff5c05"
    "cs"
  end
  language "de" do
    sha256 "a80971631a03567454e22a543c88389897b616ce57616ae6ed28cc61c6332b03"
    "de"
  end
  language "en-GB" do
    sha256 "ba01be2c4962b4135e8603c3f84386e099dbe8441c80bba2907d42041ba28c77"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f8206d4b530fa6d0adf49c8d05c68c47c0a03d4dec3f6cf1e062677c7b1db2fa"
    "en-US"
  end
  language "fr" do
    sha256 "21561d9c6f8b6b62c1f0d449331ef3a682b34d88504b155ef7e539f27ec5c5bc"
    "fr"
  end
  language "gl" do
    sha256 "014e6cf1f1de286bec8a11f329ece858e409f7b67bebb13ccfb548de587227fc"
    "gl"
  end
  language "it" do
    sha256 "afb3e118833773c2de27585b9f6552eb35b68f1047a49e654cd5e1da7b89e89d"
    "it"
  end
  language "ja" do
    sha256 "c2e2b3cc87f4947e93a8ca572933d921157c0d894b79a40be0f3edf3dbd559a7"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "8c2f629789709219f2c243af691e6f806369f5c48fdf99ee2bb27844a861a8ec"
    "nl"
  end
  language "pl" do
    sha256 "f693d7cb08e5247fb2af2c478168dbbd8750580c3f2ffcd00cd6028570a3e8c3"
    "pl"
  end
  language "pt" do
    sha256 "d716c1ca030259d1f0e0d8b1ea13ac691d3651841022b401a0a186c542cf23e0"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "f14797f90b34b0e54f5a47a594db7389c9db5410b4eb0457212b51af9060bd65"
    "pt-BR"
  end
  language "ru" do
    sha256 "dfb2404733dee6ddf78c453985277d25179c9c714fea8b549e1dbcd717c32140"
    "ru"
  end
  language "uk" do
    sha256 "d79f2648cb9578d85bf1ae77fd7231e9f968a13d39ee47cc0be3a7b87a6a576e"
    "uk"
  end
  language "zh-TW" do
    sha256 "c691ae2817aec71c1f707bfd2b7baf6ef0ef10ea6a418ff2d0cd3c76a5314780"
    "zh-TW"
  end
  language "zh" do
    sha256 "d384cdb8624df91116e4280df7917cc30a14613eb86710db9253be287851151a"
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
