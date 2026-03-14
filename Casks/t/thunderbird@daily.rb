cask "thunderbird@daily" do
  version "150.0a1,2026-03-14-10-09-11"

  language "cs" do
    sha256 "c79baa74be98077d9c485b3799a9212c4f987e08b2604887d8a7a21d06f74c15"
    "cs"
  end
  language "de" do
    sha256 "1e89ace90309a45ec279c290d8edd648613c52cb14338f9550a33f589d80fe16"
    "de"
  end
  language "en-GB" do
    sha256 "512c864ef29a56e60fe39a0383df4c3a83991bf1ce7cd6fe6975077c1bc0fe0b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0e3fd2ba06d56d30c18325d6060e995b4c1485049b498a752b3f4187c09b7e42"
    "en-US"
  end
  language "fr" do
    sha256 "d8db4f51ad421b7f9f98e72f9fe4836a5821e1c9d4fa6b67ac93e02732988b4f"
    "fr"
  end
  language "gl" do
    sha256 "5e614efa649d27a30bb6dec8667bf3e53c382e44f98fe200e406951af2098a57"
    "gl"
  end
  language "it" do
    sha256 "18be780e0f312697bbb0efd35838570b667c9119bd4ea21898d28f0d9beb28bb"
    "it"
  end
  language "ja" do
    sha256 "fe54c9f2e8082a92a5548aff83ca0376a406c4ac91f7c4c9b72ab035b809a7e7"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "76032b2cd115f611d9a73616540cec5cd2d5d85bd2bb6160126ff8304541247c"
    "nl"
  end
  language "pl" do
    sha256 "b4e65704440eb440931986f80973d319ba8d13b77ef128e308e5c3f8c4842ca9"
    "pl"
  end
  language "pt" do
    sha256 "1aeb43d35bcbe2d5efde154cb01fa2c093adc224beaefa4b1dec9b48c5c8b10c"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "da93ce872d859b6b226ba2410996cf0bdf918434d37f0d7ddc8b6319f3ad01b8"
    "pt-BR"
  end
  language "ru" do
    sha256 "137d6fc46943978d2b4db946e3d2eeea918c31ad38d4e1d1cf72c86644c69b97"
    "ru"
  end
  language "uk" do
    sha256 "3e3bccd619de521951f26c19d350b0c292d90d3131bbdbb86bb3f13ff8270fc9"
    "uk"
  end
  language "zh-TW" do
    sha256 "40a38bbd97b898d1e99cc78a139649ac7548d9e7aea685ffd2378ebd7d7d9e37"
    "zh-TW"
  end
  language "zh" do
    sha256 "19c460f4ec34fef6269e38737191120a7999f67a05efb94831bba2522ba6cc15"
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
