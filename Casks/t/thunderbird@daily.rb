cask "thunderbird@daily" do
  version "147.0a1,2025-12-04-09-56-12"

  language "cs" do
    sha256 "bda41639699eaf72145d3771944af196fd60da9cc2a29e7e0e3c868dbb462303"
    "cs"
  end
  language "de" do
    sha256 "8a9d4a5880fc103f42fca55dcfc351d9255e5ced2dfef745a087c861acf7d47a"
    "de"
  end
  language "en-GB" do
    sha256 "4878f7fb914139e714e04ab6455be3365cc68042505428b7f767e5966336abfa"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a3e7bb208684eaf3b5d460380cabfb87aef679ea319814bc907f96a420ff1fd5"
    "en-US"
  end
  language "fr" do
    sha256 "2fcbd11c815609d404a5b3bba3ef980eb5f789cb555acc255e35d1d9aa577c4f"
    "fr"
  end
  language "gl" do
    sha256 "9fdaa5078eaced391b0f0972ab75ddd6a68e99769a084b7c6c3d67d6888b065c"
    "gl"
  end
  language "it" do
    sha256 "19b751cf19818cf391a5322d5d42277186c8d70bc24939c0fedc849904acb8b1"
    "it"
  end
  language "ja" do
    sha256 "cc5837e9db068e248e397de41ca2025d946642563c12e462bfff770e995dbf29"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "08e7d3a4637d1b5761db283e79db100519e31246a4d13e841813d6a95e3cb391"
    "nl"
  end
  language "pl" do
    sha256 "1e6b10682d50d498a4b9c06a58c97a7acc4fa56f152a4e98f02d0392fa52e91b"
    "pl"
  end
  language "pt" do
    sha256 "40d0afdb30aea75fde763fc5db7fdfc7c5a1fd81a5077ba08ae7e689630a37ea"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "c25442486f40b9e274faa20062692b48e9a2c5c1b4f9b0108c2335f4b8fabe99"
    "pt-BR"
  end
  language "ru" do
    sha256 "2fb190f67a1448845ee4d39a595897ed98be6da35a016ea28968ecdb41f08b55"
    "ru"
  end
  language "uk" do
    sha256 "eadc20b49e206bea59383f5a59d9bb03cb3256e6ea6249e1e0125a5849fc7e82"
    "uk"
  end
  language "zh-TW" do
    sha256 "ae1e99668f3d101900de2ec6f7676a61eff9252eda4543d9e6a7e00fca93c12d"
    "zh-TW"
  end
  language "zh" do
    sha256 "a9fea3652cca451052144c163360479ae9e259d26083543cd6b18df98a729d85"
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
