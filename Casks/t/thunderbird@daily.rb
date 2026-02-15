cask "thunderbird@daily" do
  version "149.0a1,2026-02-15-09-13-54"

  language "cs" do
    sha256 "ad8f32e30b6cf8828f547f23c3e4e332253a32c8cf7348fd8a04fdb106f85eb4"
    "cs"
  end
  language "de" do
    sha256 "9b8be6407704708cc745e39e5fe5b2654f8395893aec90b1803690184f759313"
    "de"
  end
  language "en-GB" do
    sha256 "9ad390ce411868619e495bb34defa56d7ca1b50087b760ac352b557ae4e126ea"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a5407fa94ea6f7736dcc3390155219e75d2780ab9ca5b6d96cff0f38626150cc"
    "en-US"
  end
  language "fr" do
    sha256 "fd3514a65ddd426d775c974233b0d36c2e83f3f198d3d5837f4ba8a2e0e363dd"
    "fr"
  end
  language "gl" do
    sha256 "57c3ca95eceebf2bb4975be5f24fbb550fa6b70bc1cf9358e30453327b15b359"
    "gl"
  end
  language "it" do
    sha256 "c99476d6f0245548587be63f8cf45168c9d686ba9fc76fba73ae5b42de577f3c"
    "it"
  end
  language "ja" do
    sha256 "c79977fb39cf39487ec871fc2b7df33f6e4fb6d058ef111d56576395c86f2c6e"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "623dd5e201986dfa6630df39a6dc1f44261fbc294ecf7ec8a312a5a8df61a756"
    "nl"
  end
  language "pl" do
    sha256 "a29033e65c875ce7dae2ff0e6f58a520ef876decdb8dd2ec8d4bdb0aceddab51"
    "pl"
  end
  language "pt" do
    sha256 "278f7587e536b7dc2e2ad1d9088740ae7941d4c8b0fa704775adc2c191d021eb"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "67ba8aa55003a67a51806b3b07988be1a9bc91865d496e86a80d3bd977b9d60e"
    "pt-BR"
  end
  language "ru" do
    sha256 "431a776bda95d83a0b39818fe7d47024f2bd4ad16552e3ed0b4da018a1095aa5"
    "ru"
  end
  language "uk" do
    sha256 "9a029402990510e3130478b79cd4e0484ea91a68844638e2d308fa68ea774c0c"
    "uk"
  end
  language "zh-TW" do
    sha256 "7ae6a710dbc00b9c56d9da4a793689fd6503158635ce46975d9f7c1f833ec64b"
    "zh-TW"
  end
  language "zh" do
    sha256 "515b035c6de7e26ecb3be45e649d1bf2326c53bbdabd8d0a216c51a3972f44bc"
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
