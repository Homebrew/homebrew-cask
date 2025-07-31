cask "thunderbird@daily" do
  version "143.0a1,2025-07-31-06-52-24"

  language "cs" do
    sha256 "395065d1cf30120cecf3bd76f4202e2fe19a1554fefb3b6aa6df20b458d9a28a"
    "cs"
  end
  language "de" do
    sha256 "3cddf3f918d46bba5efec0388dafe845663cb42746d76ecef5868063bede084a"
    "de"
  end
  language "en-GB" do
    sha256 "2ef302f886d138d596a98030372348c3705c96d9ef8c446db0151327bfad93f1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3ed77cb58728ebc75a725d2fc4200e424484c134e47fc7bf1ffb3ffc5c71d642"
    "en-US"
  end
  language "fr" do
    sha256 "aee5384865c503549b99284bbbb3a32865010049b975681f210c1f1d9bdcedf8"
    "fr"
  end
  language "gl" do
    sha256 "6ebe228463e832def346d6873699b2887dd5fa2383a6c6861495409a002eba62"
    "gl"
  end
  language "it" do
    sha256 "59ab697ddfcbc2825d72b1128b456488e41c20305a217a30bf9ed59953f4cb30"
    "it"
  end
  language "ja" do
    sha256 "deef194b8be04f09cfdac15e35ca11afd706b5046f99410675d4223946c39ef8"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "64aa020303455665e64f0788752661a4bbcfee5d23a6ce97a91eb9ada0a232d5"
    "nl"
  end
  language "pl" do
    sha256 "2bcab70ec50ddcc7640ccaeb7669eb1007fa828c6d8213735a88203efbec9eb4"
    "pl"
  end
  language "pt" do
    sha256 "3bc7a3a67e03102ea26ff0e8a0dbc75e140624c22200cc198d893f78f9495ade"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "60a7b1ab2925ab648ab5edb591b68193f6f17a8c48ca8ca6917e78e2b6259b5a"
    "pt-BR"
  end
  language "ru" do
    sha256 "a7518db0ad19af1977e68b9c028d41149df8fe3d719f110120373d7e8567956e"
    "ru"
  end
  language "uk" do
    sha256 "81ec8e39ea044ce40102a6531e19b63fbfb0f2dd5f52c7cc1e041c73e26e92f7"
    "uk"
  end
  language "zh-TW" do
    sha256 "40b9d0151f00632433132aa14ee42da222007c592abf0e218380064cfca214d8"
    "zh-TW"
  end
  language "zh" do
    sha256 "733473cfd3c3ebb01506efaf6b61bafc38d9bed94cc09f08eb87e278faa87487"
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
