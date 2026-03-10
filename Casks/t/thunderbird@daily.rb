cask "thunderbird@daily" do
  version "150.0a1,2026-03-10-10-05-27"

  language "cs" do
    sha256 "714d7995b0632aa5787f4a0f9e5257df6b95a1f7538b40ceca64af2746fcf37d"
    "cs"
  end
  language "de" do
    sha256 "81bf61e1b0f2c052190cf52f034924564ad0cc446354a7e9e8f93c666cc9289d"
    "de"
  end
  language "en-GB" do
    sha256 "b7abc1b4fe5c761e6ef8713c44b4a5f95dc97c11962c2755f52684eaab3bc323"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ecbf4343a29146f5ea26a8e217ceeb642664cc7e38bd663f701c74934d5e3d20"
    "en-US"
  end
  language "fr" do
    sha256 "fb062f126420fb0b7891ef019a8769b13ca5bbc8a3b6a385f8ff18c952fb4eb5"
    "fr"
  end
  language "gl" do
    sha256 "dac1e58d1cf9e95c622199c0e7bb8a20516155df3f8d259d2ae5ed2c5fe411a0"
    "gl"
  end
  language "it" do
    sha256 "b6367756ba161a0d939271f140caf84bb1c5acb9687e958303ad8bd74b5343d1"
    "it"
  end
  language "ja" do
    sha256 "f4877159eca41f791f6e073a03cb0ac893d409dd01c8c06ca8f0416e8ef55a42"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "5dc47476d56e5b3c75085e20582111b33ea1f92e6a58bbd28599d41f42f32618"
    "nl"
  end
  language "pl" do
    sha256 "6d0f49cdaa90ca46f5955beec16fdd83cbd756ca8d010162e8f143ac86f974e2"
    "pl"
  end
  language "pt" do
    sha256 "e4df04e3d116028dbb5d7d8dc45b883357b5f7f3c4fc08cbfa9a32da708e97cc"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "934890d452ff1d5dba50de656f8bc80948583dd0f6bddbf1a7e0545caabc1ae6"
    "pt-BR"
  end
  language "ru" do
    sha256 "8e0f6176d24745d5501025c9a0f14e15781f99b1dc4fd735ac49151076e4d7da"
    "ru"
  end
  language "uk" do
    sha256 "dba4f3d144aa4106c30b494676eebfb846646d1029095ae797a97411bf116a66"
    "uk"
  end
  language "zh-TW" do
    sha256 "8dc95ed2eab7646b1ef9dce8cc3eeed712dbc7cda76f69f06b04a908312277bd"
    "zh-TW"
  end
  language "zh" do
    sha256 "bc9b21f1ac83bd10ef3ced0d2c208078498b283be0c19c546c049ff88d637d5c"
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
