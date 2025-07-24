cask "thunderbird@daily" do
  version "143.0a1,2025-07-24-10-09-06"

  language "cs" do
    sha256 "ee0973e1b2f124296f3cd4d6ed5bcd6bbf591eced13cc138c9a093317a9d14d6"
    "cs"
  end
  language "de" do
    sha256 "763914591af40e2644572a96289361c99411876d1df2134131816419402140e8"
    "de"
  end
  language "en-GB" do
    sha256 "f32b70f057a637c8eb5cd849381fd6b9b56da2469eecca0cd29793f0759fd9d1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3167be6b273e51b7cc7f3aabc71318879a0da630c878779255d1aea37ea10b23"
    "en-US"
  end
  language "fr" do
    sha256 "42d02054215cffb92fed401280d26d9eb2f766233114475907f95e09fbf7c8f7"
    "fr"
  end
  language "gl" do
    sha256 "87b695ecbc60d6b4e465ca4c24cf5641c11e7925e1e4e578ec1dfe9e6ad6c4bb"
    "gl"
  end
  language "it" do
    sha256 "86f3e5dc68a2701d46692d1b8edd9c55249750409e3a8b01da2b35e0f730f65e"
    "it"
  end
  language "ja" do
    sha256 "bab74939b75a70db458c72a9932885f2babe9a3a7069e2c1eb833fca30349e3a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "dfb9050cda932e39dd27ff277d743c888d8e29331399e1e30a8626168550cedb"
    "nl"
  end
  language "pl" do
    sha256 "3cdbdd8005960412928b69981fa84e452e927da2689ec13d76825cf13f08da78"
    "pl"
  end
  language "pt" do
    sha256 "2bc565bac7662f21770b8904a1cd9b377edd1415c2e84a625f7aed56d6e3038c"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "348ccf5e96a65b6efb30b66b8f3a935db5b3993507bc71e747f6af8bb91f71e6"
    "pt-BR"
  end
  language "ru" do
    sha256 "38669893dfeed82fcea1634dea98476a85850dc1a269b696c086a7230d486dcd"
    "ru"
  end
  language "uk" do
    sha256 "c0864ef55bc6cf9fba47a0565e1bd17d2ecc76c4172d424d0680600faff2f3d1"
    "uk"
  end
  language "zh-TW" do
    sha256 "0bf51bf8ef4ce52f2b309cd049471f45b181e9b815071d64877b6d3b6a0db395"
    "zh-TW"
  end
  language "zh" do
    sha256 "7e190feae23eee13195e6e01f46f1c668c91a6c561349b5d2abd4203549ff6de"
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
