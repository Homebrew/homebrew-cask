cask "thunderbird@daily" do
  version "144.0a1,2025-08-19-10-32-31"

  language "cs" do
    sha256 "6d4675cbbd589ca388c19855d166f1ddb31ec78920082880a0ce244de1f12466"
    "cs"
  end
  language "de" do
    sha256 "132d67ef9afd5745e46adb33d5f349e5b5271b3fa16fa2f6f7c5930b6f15baba"
    "de"
  end
  language "en-GB" do
    sha256 "cbd26d759561787403e2f2004d7a070653143d2eb1e013797042d9ca94e20bb3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8382eb3707de1376271c45ddb8bf506f3cc2828527f786bd9c8aa82e69ad5302"
    "en-US"
  end
  language "fr" do
    sha256 "e9a1a28e96477b1e47056aec03e6713fa4710f789a065ace6accc624f3eef603"
    "fr"
  end
  language "gl" do
    sha256 "6816b32caa836b476ee479f9b1d60bbd9a99b2de20d83bd66a8850828265df1a"
    "gl"
  end
  language "it" do
    sha256 "25575804cc29c7088324befee96e9c036196b6dce0a9e095f44bd907e89db443"
    "it"
  end
  language "ja" do
    sha256 "303ae2597a4c5d0f59aaa459455f7f4a091da72765a9a8b18ab335ef20e1b3e0"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "93dd34a6a9a531abc78a0e90cfbce3818d659675d9521f8c2568d0ce42ea2f79"
    "nl"
  end
  language "pl" do
    sha256 "d1a80ccb502af5aa515941a1e46596e663b2ee57d7b76d61b4e3bdbbddfe25d1"
    "pl"
  end
  language "pt" do
    sha256 "3a92bde8525d68e7b45b428203e73f3745523aa30a456d35dfe0e1874e91fa5d"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "128b9d53a7d0a1fae87470ee296d8991cc5f7325eda7202181e2a96914a3be0d"
    "pt-BR"
  end
  language "ru" do
    sha256 "6547199acc4458d9966e059a3bf9fcdc4a0fac3d132605b249081c213ffea2a8"
    "ru"
  end
  language "uk" do
    sha256 "9e4935df79eac256c7b28cce6aa93190e4ca2d43573f831b4484134d1bc254f8"
    "uk"
  end
  language "zh-TW" do
    sha256 "7db26590129f2376d4c80cef35537fa5c2d69bd02a40380c981ee122c42eca33"
    "zh-TW"
  end
  language "zh" do
    sha256 "f99f0aec13d31e3e0f36c8b173c9c3f51ff5afe16544bc0fc4edfb0d5de7fdb6"
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
