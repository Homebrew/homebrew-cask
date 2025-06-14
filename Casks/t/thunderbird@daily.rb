cask "thunderbird@daily" do
  version "141.0a1,2025-06-14-10-22-19"

  language "cs" do
    sha256 "e76ca7965b9a01d6e56289783d70c77e1ee7b7b39df7780bc0d1f2c80eec5ff8"
    "cs"
  end
  language "de" do
    sha256 "f45c34f7f79e0dec70fa7f678a411877f86dc3864c64cdb5587a65ecf50b9a09"
    "de"
  end
  language "en-GB" do
    sha256 "2b1ae4d5b06f6681d251dd173142b6a3459fafc7362e462b223a3eab88d59d80"
    "en-GB"
  end
  language "en", default: true do
    sha256 "04bb3d0cfbde573be0ff00f07ba6e15fd60635329f7cfef3cb919baf80f1a565"
    "en-US"
  end
  language "fr" do
    sha256 "f2df98e6fd5533633c5cd5fbe09a19903df04c867664bf4ab940c3b8d5fbc2d7"
    "fr"
  end
  language "gl" do
    sha256 "dafc0bd9efd4a27b5b05918e886b6289ae0a7fb315d22bb0f9954930cb64e1c4"
    "gl"
  end
  language "it" do
    sha256 "219530b7013211ebaa5a9abc815cc217ac6842962bf3b7f7b3260ffca40a099a"
    "it"
  end
  language "ja" do
    sha256 "f992b9077707a6143f2368f01502b51a64ac01c1cfc9cdd51944b8654934ef00"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f823d38229ef6be8e0db6c4e6a60606bf6a6cb5597c51a47586aae17a698d649"
    "nl"
  end
  language "pl" do
    sha256 "2bdfbaed7b6a708e080f7f7554bfe4c3068c7a9b4f559859a4505f2219ae745d"
    "pl"
  end
  language "pt" do
    sha256 "ebb8d44c30f168b14ecdb30ac316121d8081f741d1dac78d81fa2bed54d47a8a"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "dbef43d268ecbbb8677d007ebfef8fd34ea98f6b6b9d657be71a2285f2ee9b14"
    "pt-BR"
  end
  language "ru" do
    sha256 "58df73df4f48dfec43145b725f08e92c771889d598d73b48a83a46ab0ee85161"
    "ru"
  end
  language "uk" do
    sha256 "e502ab40656b80f116c9b4147ddb63c00068e33fa683db7d5bbaf1af2c6fb421"
    "uk"
  end
  language "zh-TW" do
    sha256 "eb12755e92baabcb22adbfca09d998fc0a147cfc12c56e16c880a78800fd42d1"
    "zh-TW"
  end
  language "zh" do
    sha256 "9dd255f88f56fc8abd92ae7a797c74d041615667bc58646320d4de116ceb624d"
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
