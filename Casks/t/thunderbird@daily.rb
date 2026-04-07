cask "thunderbird@daily" do
  version "151.0a1,2026-04-07-06-50-14"

  language "cs" do
    sha256 "0f47138e660f367ef9f76134ec279e74725402107f7121917b8a13b836a92d1f"
    "cs"
  end
  language "de" do
    sha256 "edbd3257e02f7302ade472cce479dabae5f5fe70c5b97ff01a196257c4df58f8"
    "de"
  end
  language "en-GB" do
    sha256 "5747604b68cf8df66d3e108606f70acd8a5a74814176c5c1d7b7199560eada7d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b0d7bdccab5d88521f4694578d09407d91d2f95d0a6f4aeb33b2fd40a4f2d53b"
    "en-US"
  end
  language "fr" do
    sha256 "721deead1ae3274ea7f45403c344e38a222c9b2bd98a6c69f0da81922c128d0c"
    "fr"
  end
  language "gl" do
    sha256 "e8976a82b87cc15f1316a48f5134050a66f141c054776998a8864bec46fa1e03"
    "gl"
  end
  language "it" do
    sha256 "d1b5496c690a73bd4b3777cf161753791a1d39365da881267a583532b91ac5e0"
    "it"
  end
  language "ja" do
    sha256 "5e2557453b9e24baea1e81f73ae8a21bad20e8f5c0593b9208855f905ca4bada"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "1544219646ce9d75e3ea1675346a53b1b28529caab9e86262318f6cc9f420621"
    "nl"
  end
  language "pl" do
    sha256 "d2a69f7199afd5026a951266b10229116a677a1df127bfcf085f134b8027f728"
    "pl"
  end
  language "pt" do
    sha256 "e08f2e65ab216a44395e5d520f3ad890f8b611659a06f7e617317d76804b8762"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "3a81e972eacba88de3993aa330f9d76053f429c400befbe424639231fd746daa"
    "pt-BR"
  end
  language "ru" do
    sha256 "27d769db5e434279dfe64aa643f72999431c73931640628a130b1ecb3ae9b990"
    "ru"
  end
  language "uk" do
    sha256 "3bf783478ea5f166eef41bf09da4ed93c78575d717850eb9d819f0bf1355ae32"
    "uk"
  end
  language "zh-TW" do
    sha256 "aeeff0c4a73f89da95523228dd9fd7b1ecfaa6f026e79a4ce5bd5526d07220e9"
    "zh-TW"
  end
  language "zh" do
    sha256 "ca928c71be9cb8b527c1800e42f85ea9813922c60d211dc0d54b047a8ce24bfe"
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
