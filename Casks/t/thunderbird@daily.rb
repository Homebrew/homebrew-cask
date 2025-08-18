cask "thunderbird@daily" do
  version "143.0a1,2025-08-18-09-10-01"

  language "cs" do
    sha256 "6eba4525a1b8aa47047bd1fe9182f77deb86bdfd96361c3e983b1420be17ceaa"
    "cs"
  end
  language "de" do
    sha256 "9d36dbbce944a76ec760760c941050acdef64d4c5eb1ab9173e3fd1d26726a50"
    "de"
  end
  language "en-GB" do
    sha256 "c184e8852851e1730338afdd37ddbbc661a48f2ae344f4fd24698ea7baa7d8a5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "23beb9da110f01177e0808391ed172ee2db37f170d718c67775e723f2e3ac9c7"
    "en-US"
  end
  language "fr" do
    sha256 "23d6feac8b55ff9cb53258840c543d9bfa39b248152565797f2e6f4b8883ed5c"
    "fr"
  end
  language "gl" do
    sha256 "96c63e13a30e79f0c9791f7145649c8a56445de16849c77e95a7a2091e5f1823"
    "gl"
  end
  language "it" do
    sha256 "cf819248cdbb9c021d7902f85629f19bfaef51ab419782432470438e6b4e42a4"
    "it"
  end
  language "ja" do
    sha256 "dcd450fdd380cb0615b0535839e05b8417f579101e1218d590394258268f22d7"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "5db08a9257b5e3b5a72905858683425e4fc43c0a9bb10c15bb4cd98b06bafc29"
    "nl"
  end
  language "pl" do
    sha256 "420e483c8d26a195abcc5b1111729d48365c40ce014bf369fc68a750a3522928"
    "pl"
  end
  language "pt" do
    sha256 "afb3f0c002631129b4034e62309271a88d4456453bae585ac31cfbc03f14806d"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "f24cb16a05c322358338c19453b9986332cd15db86bd5a1ee8ff11127708a1e7"
    "pt-BR"
  end
  language "ru" do
    sha256 "8f618889e5981de1d6fd7562e4e0fa420360b6d39cf6420af20ef602161540e7"
    "ru"
  end
  language "uk" do
    sha256 "772d5a172ea10680cda824f4f994f248adbb27a64d86fddc07d30e4a317b4f2c"
    "uk"
  end
  language "zh-TW" do
    sha256 "c2a7a88f782c1889f24b468734e674bafd60c192dc197ac027fecbebc190c45c"
    "zh-TW"
  end
  language "zh" do
    sha256 "375b192d463e43e3d1154e5acf0d9f77eafd704811dd096e134303edc80866a1"
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
