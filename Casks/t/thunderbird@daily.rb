cask "thunderbird@daily" do
  version "144.0a1,2025-09-14-10-30-29"

  language "cs" do
    sha256 "7f15e7fce5a67bcd94e71a975eea9ede5f4d3002c23c02c693f0b95caa54ed79"
    "cs"
  end
  language "de" do
    sha256 "967107f3c87b8de1a1d0811d6a0bf02b39661bf2d217e748790ec79749af2481"
    "de"
  end
  language "en-GB" do
    sha256 "0c5e6af361502fec1885716e3df78c5059b960576bda3902d75dd084b5687b00"
    "en-GB"
  end
  language "en", default: true do
    sha256 "dc5868d7dbcc5abf6b4a3f4754d2924d856b2e311c9d84b6eee898a48ab90eb8"
    "en-US"
  end
  language "fr" do
    sha256 "7c5b0173314dcc5ec47e76414803160dc3c44513b2b427ae978ab2ed2fa7efad"
    "fr"
  end
  language "gl" do
    sha256 "4a7c79ed76c294eb44004e6933f199ef02a0d475a9f3f27966af562f814e7604"
    "gl"
  end
  language "it" do
    sha256 "861bad0d407615e015d4ecedfbce99f8894f67705bd4efd300b7420ea3e04bf9"
    "it"
  end
  language "ja" do
    sha256 "074f5884f8297648d7eefd43f56277e8c0d83c065eb66a6a67b9eccc2e2e2a79"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "bd6b6fa03a1957c543bbcebb4d22d477b1243b1f04e1359ac636cf0a2a716e5a"
    "nl"
  end
  language "pl" do
    sha256 "70f10670847e3e6de3457fe491c8dcb2986a455f6103682ea17abbd2307aa31b"
    "pl"
  end
  language "pt" do
    sha256 "6378b02b7e8a1e4a9518c27728588a0682aa3d3dce0eca41c16393a7eb8b5669"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "a8f785d81d6d2cfe6b6490ce50e1af7fc7e0edb37eae313a0e11026e34a8c76b"
    "pt-BR"
  end
  language "ru" do
    sha256 "b5be7891f5ca237fd432c4277ba5447a1bde9dc8c09fa6964777fca04ec14c10"
    "ru"
  end
  language "uk" do
    sha256 "277b31109e40c69e695940535d92d2af3a27ceafd9e6270aa09ee0f222788d58"
    "uk"
  end
  language "zh-TW" do
    sha256 "46296a86c233d94bbd54ff3515f7958818c8a4ecf1b8d8a232119f20fd9cf8ca"
    "zh-TW"
  end
  language "zh" do
    sha256 "9b4275865a8d3510f27cb146c33a295cc0533ac1e17b2f2ea9d2b524c0559755"
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
