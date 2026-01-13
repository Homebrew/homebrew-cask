cask "thunderbird@daily" do
  version "149.0a1,2026-01-13-10-05-29"

  language "cs" do
    sha256 "bd8f0334feab0d982f537f07a2a3f077c4dbc1f3c544af44d6a1b35ca2cfab31"
    "cs"
  end
  language "de" do
    sha256 "0591719b2da1d464d0dd91a96522b1bc7572202f1ecc895b9f0d6c4f0650e666"
    "de"
  end
  language "en-GB" do
    sha256 "d3bb6b6bbbb69ba5ccd0d9e8f5f19fad363ce2f6c47e5b655ffad62c25598af9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "dd33a879b995a60257b1db0854fd7dbcbb87dc70aecbc7b2d0525a493912b72e"
    "en-US"
  end
  language "fr" do
    sha256 "ec26fdc446d6d317fbab0284808648a02456d4e862f92fc57cb575e9d7392f46"
    "fr"
  end
  language "gl" do
    sha256 "98462fedd68cb8e7c3cb73e4db516958cd1b7574852106ca03449a371e2afc38"
    "gl"
  end
  language "it" do
    sha256 "ebac7ca37ff04546dffee4cca822bee59364c6f12a49e66c08f24245a1345c01"
    "it"
  end
  language "ja" do
    sha256 "2cbc9874a5c16f5e49de9d7fed3ea08fa90c85ac54df4318e4fffca111dba4d0"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "7bb6edc11e5898627e6e194aabc09f74b58e91133986f3a3eba9c87a8a655d48"
    "nl"
  end
  language "pl" do
    sha256 "075470f8a7c23a5c60766af44c4f6cfcc2b8185461f3af6efa34a1c6635b3d75"
    "pl"
  end
  language "pt" do
    sha256 "be8230c847caa6dcf2927da11a887b2600466ddcc220a0598a80b0b54b9f8374"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "027efe166c2403e73758e1e6fdd2bc42149f7e0ab42cbb9c7ad396e3732407ee"
    "pt-BR"
  end
  language "ru" do
    sha256 "aa40c91f5510cc573d1567d79c03dfa1c513874f6ebe15c39bfc0cc840f4de63"
    "ru"
  end
  language "uk" do
    sha256 "2a699cc8ba14ffb947166db16ad7e986267f63c4c45073b0d998e230460c24f0"
    "uk"
  end
  language "zh-TW" do
    sha256 "0de1fc1f7eeddf72e0cb330787ad29e713548b0bae32e36b3416606a907d66bc"
    "zh-TW"
  end
  language "zh" do
    sha256 "848fd387c5f42ef3b458dcda8dbbc6185c6d10fc4ba4e1e7c15bf54cc0878237"
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
