cask "thunderbird@daily" do
  version "153.0a1,2026-05-30-10-16-24"

  language "cs" do
    sha256 "781eac07d9996477ab107a76c76178d4c4a9b6ca0b0350926b37b8857a93dcd6"
    "cs"
  end
  language "de" do
    sha256 "084e4125ef3006d565d6239a0923aa738c5739e35419481dcb1d4ddd9ac7e815"
    "de"
  end
  language "en-GB" do
    sha256 "7bda3ea095e20214c134155856807c34705927e95c2cec3b51433799b0be6468"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f6d9b07efe536da471eecbde40cb95caf9cac0973c206fc47d12f602b9671d30"
    "en-US"
  end
  language "fr" do
    sha256 "ceb324140641b781e45e36823e385b8d16fa5cc3d69344dd936ce31cc32878bb"
    "fr"
  end
  language "gl" do
    sha256 "a48e3c056de900662ea9cf06693e33e868d052224dc45960bddd0b55ea6a3350"
    "gl"
  end
  language "it" do
    sha256 "d704ff99ddc24eb085f92fe8d2c0318bd6cda22818dfabc66f839a6ac65ff073"
    "it"
  end
  language "ja" do
    sha256 "a079abc74957d24833817753b6e119a60a10620235c17f07f8e983e4b988ee21"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "12f84123414b1a264b388c3e534a10663539190f12b0aa5971de2af8608d39da"
    "nl"
  end
  language "pl" do
    sha256 "45f8b568d431e34d74bda2734fd08cfca6f52cdbdd7f21b963ed6c19d3a15664"
    "pl"
  end
  language "pt" do
    sha256 "44773d58e14ea8ab9e1fcb3aafcc909196305265e38011572b955a3374eec730"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "c2017b096d001ece6a27d8fbbb56908a0137719c9752ce02606aa5aa0dc078c9"
    "pt-BR"
  end
  language "ru" do
    sha256 "8af84672f0e5488b10210b86eec186cc5c05e94c3359188918cc09e9cab96df4"
    "ru"
  end
  language "uk" do
    sha256 "fb2a020b0b5de4b4e2bcdfb883aecdb30440dad0be439bfbfedb730a2caac8ed"
    "uk"
  end
  language "zh-TW" do
    sha256 "f7ef8d2c00ddf8beae7ed56f3935bfa932597a842efc879e399e2373f8180420"
    "zh-TW"
  end
  language "zh" do
    sha256 "2ec584c063feaf5c9e196042dc223de0ba3cc0e8a0de25b72163fc0e5adf8e73"
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
  depends_on :macos

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
