cask "thunderbird@daily" do
  version "150.0a1,2026-03-13-06-52-22"

  language "cs" do
    sha256 "1085846b5925e80b46df3de37ba9bec722ac72e87bc41eb3f909186567e2a564"
    "cs"
  end
  language "de" do
    sha256 "d22344113783e8aea59f14fb0e00aca07a0b73578a369a9be9ac13dcbbbc2162"
    "de"
  end
  language "en-GB" do
    sha256 "b99eea3f212887a7ed3a4cb6009f93828753fbf01f74834fd93d556456b886c8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6e9b95688ef47c5a6e6941a5fdaf0fbdf2443b264b307357cb472c5a58a2a69a"
    "en-US"
  end
  language "fr" do
    sha256 "3330312e28b58300a7dd682f7a1ca29083f16833dc2dc1c1c501b18108d3986c"
    "fr"
  end
  language "gl" do
    sha256 "966994bcdf9e179b0b06f8aadb91878ba68296d8553d9fa38ce4c978a0b44070"
    "gl"
  end
  language "it" do
    sha256 "943280e9e03f8af3a1259ca6b105b8f3d755e921f768fe747cc86fd66b6fded3"
    "it"
  end
  language "ja" do
    sha256 "96dbe6d2a0036a0b015cc140c89279a45bcd33ee324a85106775a52717e37b5a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "904926c3fc15af042c52d125097a8a87f466120bcd42c3c15e4f04180b8a0bc5"
    "nl"
  end
  language "pl" do
    sha256 "34b38e8709739023e6e2bba52b6b7010c0ac9705924c3dcf350743901d88c3ba"
    "pl"
  end
  language "pt" do
    sha256 "25c0af9b40765452a53be1586243258127b157070c1e8ceb89e42456ab745d94"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "f07f2c15b62e6e0474fcb42885273d22393d3631c16097ccf844c53cd81b0273"
    "pt-BR"
  end
  language "ru" do
    sha256 "3eaa830d319e54ed344826d6771dc66c1e9d7261a7cf13fd2b0db3782d72cf1c"
    "ru"
  end
  language "uk" do
    sha256 "e16728733af5b1a207200d7a725b782d5e75b2e92074cf80041d65d7c73ac46e"
    "uk"
  end
  language "zh-TW" do
    sha256 "f5f7f22171f3bd1900a3c63dbc9ae6d691812d4424d70c987327da13ec3db946"
    "zh-TW"
  end
  language "zh" do
    sha256 "babe0452f1c652eea75db6cdff20e30bbc42a8dc83989aa58bf1383f1a39e733"
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
