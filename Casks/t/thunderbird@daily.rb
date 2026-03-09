cask "thunderbird@daily" do
  version "150.0a1,2026-03-09-10-14-57"

  language "cs" do
    sha256 "a8edf811e95ae96745de1030a1293b8715aef388c7bbf60d229411f2383b22bf"
    "cs"
  end
  language "de" do
    sha256 "a0d32cf60517657c028aac548a0840d6d235efca2c8c737da6705e897869f656"
    "de"
  end
  language "en-GB" do
    sha256 "ce5f117e74003858d650fcf455326999acf7a7df9af203b2e104cae9671d1219"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fcceb780e7308bf3ab4eadc6fb6c37c4c62c2dc1038924920bc00c74b4ed4680"
    "en-US"
  end
  language "fr" do
    sha256 "eb5b7240fa6215b9a5ea63e2c831203ea1cb408c56105cf8ee22841320c77382"
    "fr"
  end
  language "gl" do
    sha256 "7544316871e0cdc45fd53faa14690def31d6e8ed527d5b9eb2736fd8100318d1"
    "gl"
  end
  language "it" do
    sha256 "34d1b4d585fcb50aa5f4702f4457b07b999bf2e97b3a948398d2d9306589bb82"
    "it"
  end
  language "ja" do
    sha256 "644fa46b38f85f6002dd75fde58fc2c28b297c588d75ecbfe9b0cabdb8ef03f1"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c99c3ea00f3b99ee190d462be613766025da9e0547c729ad61cd98429e73b799"
    "nl"
  end
  language "pl" do
    sha256 "774d5782506d0bd35cd982b295c44d2e2c0f4934906d3f97c19e51e914ca4787"
    "pl"
  end
  language "pt" do
    sha256 "f69df05e940b05d3e58d177b7b6278b0dc74c0be1a47c637ad46efd9e3ce8276"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "6785a0af3600e3c203aeaccd8f3a49b2d7ccf70c4a38f058e31588ca7aee2bc8"
    "pt-BR"
  end
  language "ru" do
    sha256 "4e931d281215914544363939c2ed22956f2a3247c21507b1a9afce7a482d37c2"
    "ru"
  end
  language "uk" do
    sha256 "f6603d548fe7ea4259e61fd01e1536f5d47989cd710fda42004c46a9db1195a5"
    "uk"
  end
  language "zh-TW" do
    sha256 "d89d5bee0cad04c39271bbcf265fff4d2e557e3546d08cd0d53506559ebef271"
    "zh-TW"
  end
  language "zh" do
    sha256 "6e9b088dccaaacc4066b140eb1f82001048c7248ac1f010f87cb365a63daa034"
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
