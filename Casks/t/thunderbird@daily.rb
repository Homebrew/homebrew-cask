cask "thunderbird@daily" do
  version "145.0a1,2025-09-19-18-00-15"

  language "cs" do
    sha256 "680c4784e466f1d6ffa3f64252de9a37549ac13468e612943626c13387bb5e94"
    "cs"
  end
  language "de" do
    sha256 "3ddef9334102e79a075a92f0b70f21f1918911f41c8c91fc5f9f95a2e12fa524"
    "de"
  end
  language "en-GB" do
    sha256 "848b508efa7d37290f3d755c64275d5437e413495dfc5ea30ab0f78badcc850d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e22272cd8ccf5f9815d8e5677fde6cfa5fbfa756733fd565302cdf29e781c960"
    "en-US"
  end
  language "fr" do
    sha256 "6a276302b0c32a29767affc079b8b6ad730f0e76d9b00562da82e748d0bffbfe"
    "fr"
  end
  language "gl" do
    sha256 "a9b212787086f7931a598a4ea97ef7b5dd8b06c7b4bdd1dfbb84c74e8b4906a2"
    "gl"
  end
  language "it" do
    sha256 "65d60ebb04bc57fd1d63ab634bd8c2c7b91aff67cd870692a845a14299e36fb2"
    "it"
  end
  language "ja" do
    sha256 "9f77d977942ef005801a68329db2f8c42323dd7c7361f0018a84d2e3a92eaf83"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "33ad4a2f73336ed10785fa62a660759d8560480fc45366a7592fbbe89995e15a"
    "nl"
  end
  language "pl" do
    sha256 "49dfc222d0254c3868859fab35a41efeffef8d98e707a09d7ec67eba91701830"
    "pl"
  end
  language "pt" do
    sha256 "0fbff3419cbcc50dece5006740d045faffff905f83464c03bd4db6fb3def89e0"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "bb91dc34937d8f8ccece18daf4e4f53683bfaa74134febd101320c8c7f923913"
    "pt-BR"
  end
  language "ru" do
    sha256 "fb329c347d4adf923beef407499abbb284d03967cdb4417de12da92cbf9b7511"
    "ru"
  end
  language "uk" do
    sha256 "478fdb57768fa0d842883a0fa01497f8d43aabfd9a0bbe1e9e38838ac399789c"
    "uk"
  end
  language "zh-TW" do
    sha256 "ab6c5590004cd9c9fd9708ccef2b151a229777123fdbedb265c3154a0b71fea4"
    "zh-TW"
  end
  language "zh" do
    sha256 "325216af3f87d0031381e64010e0e3e9e947aadaec4efea990777c679838633e"
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
