cask "thunderbird@daily" do
  version "161.0a1,2026-11-05-06-49-54"

  language "cs" do
    sha256 "9966cf6a6251390579d863b6ab5554ef2ce4e67a9dce65ae9e6472bbc5ae4624"
    "cs"
  end
  language "de" do
    sha256 "efcecf97f32f93cd62e47d5be9fa9874b2e3613cc58595276455146d5c1f065e"
    "de"
  end
  language "en-GB" do
    sha256 "bf648cb9f3d1d6fe562bb11ddde698b86b51b0957197e3f70df2b3c33dbd2433"
    "en-GB"
  end
  language "en", default: true do
    sha256 "61c9628e76cb6b520e913b000d886b123c0c02c2d7ee329e06c8a7680e3b18be"
    "en-US"
  end
  language "fr" do
    sha256 "2c7c697b29680b1626887f6b07fd8ddb5406f302fd0d12400ff789b636298ecb"
    "fr"
  end
  language "gl" do
    sha256 "9e466c266b2e420a62b7d491842104e2cea6cd4e4dc21218328fa4857b0b73dd"
    "gl"
  end
  language "it" do
    sha256 "97c7150edc4e135a5cbe213929c07a5b15c525a12d6e80fddf748fffb730e374"
    "it"
  end
  language "ja" do
    sha256 "aacf39484ed086f0abf3fbbee466f045aebc30af70105e1a7b138b6a3608255f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9f2ba55522c4848f24761f2b88fefcb37bc151dab75a12c7ed652a16ecd1b839"
    "nl"
  end
  language "pl" do
    sha256 "ef9fe51c605e5de1343287d31b3a9c91662b6b9b853a33d016ce3c70db3f9339"
    "pl"
  end
  language "pt" do
    sha256 "b4df9e3c509a0edd52e3f7ce90916cf5ac82cc43887e65d01dd488b8f43f11f7"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "c1d50f264d567613e9ad407adfa59b842d84ef974a9805f8c2cd4e18909f92bf"
    "pt-BR"
  end
  language "ru" do
    sha256 "dc66f71fb83cdfaac8482a6b77ba053413b4bc558b50a42961f01d7a64204723"
    "ru"
  end
  language "uk" do
    sha256 "e9b2f5c540921a0ef9eef131a81921514b546a58b9f584c406f7e488901323d4"
    "uk"
  end
  language "zh-TW" do
    sha256 "3486f2801fe3d36256dd4a99901a2f6f211ae3d6d48f264cd77e7844f69374b6"
    "zh-TW"
  end
  language "zh" do
    sha256 "3ff7080149cf15ca02bf73a5e48ad7059cdde35c6460cf3f21ecd5acd17281d1"
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
