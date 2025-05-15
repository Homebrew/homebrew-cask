cask "thunderbird@daily" do
  version "140.0a1,2025-05-15-09-34-36"

  language "cs" do
    sha256 "bd8275c6af49cb5c96e12072adeae0ada53194238702c949082d7a4922c2def7"
    "cs"
  end
  language "de" do
    sha256 "b93d9ebbaf3485aeadf1d6dd0156e1a769f4d2aaf72ad167d94a8604fdc19ec3"
    "de"
  end
  language "en-GB" do
    sha256 "72b28b21ba35dd3c36c8341effa6e04502d5aa6513549fbc244ccfdf3ef3e9b8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d95bebb5ab6b1b62832841f2b3c4d25ff24cf836c81290cffb160c8ad1ff47c2"
    "en-US"
  end
  language "fr" do
    sha256 "3e275192751037266f52d44bcd1d51696a63843ccc0af9b81a84005e9e2c294f"
    "fr"
  end
  language "gl" do
    sha256 "70e88dccdc174e81acfd44a01086d1f86001ce1bae76c4ef46a2c03932eeec27"
    "gl"
  end
  language "it" do
    sha256 "caf3bf34967d9ffa87e30ef8a5bf992bfa7cf85452c3b604d49c583ad67fc339"
    "it"
  end
  language "ja" do
    sha256 "c993159484f9b5995878c2039cd6db60067cd32860fd8d0260cee42ebda05399"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ac6ad8c6613afbbc84389476ba275e6addf548c92f35f78f75f7ac0e3de01537"
    "nl"
  end
  language "pl" do
    sha256 "372c94e360d15e4856704b1301e408069abb24efcd8dedf87cccf9771a51d939"
    "pl"
  end
  language "pt" do
    sha256 "e2fedfb3017a943157aa59e5f0e1fe6f681aa14f281a4e72270e1dddfbaccb0e"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "8496a00925a14c40f733ff952e96703c588b09d3c7451b7b4f59f04723f082f9"
    "pt-BR"
  end
  language "ru" do
    sha256 "70e11b2f68fa514a0489afdc722339da27fda761921bdd087f19b62217ecea2a"
    "ru"
  end
  language "uk" do
    sha256 "cb367b133c533a9a14ac9289bfa0821c95da73c64d2bd6e8289c48e4a589317d"
    "uk"
  end
  language "zh-TW" do
    sha256 "4f2713f5f41e51dce25e6f32c28c222b6be32def1f7b646653da86682d9813f9"
    "zh-TW"
  end
  language "zh" do
    sha256 "a928bc8c58be7b5fa587d3d390e620890b393aa3beff9d4ee2b2571458408c6d"
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
