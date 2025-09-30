cask "thunderbird@daily" do
  version "145.0a1,2025-09-30-06-52-45"

  language "cs" do
    sha256 "ec6fb68e2a13319290f31ea7c3383cdb1ed8197472e0023bc9cbf779cf2c8198"
    "cs"
  end
  language "de" do
    sha256 "fcbb9951da4813496a63016efd6314193fd36c8674d32f684496596b95b42d0d"
    "de"
  end
  language "en-GB" do
    sha256 "5a5bf8ffd0dce0116056270ccf12d58912e401601e664d77f47a43a8908c0666"
    "en-GB"
  end
  language "en", default: true do
    sha256 "dad3080c9fa09806181c2978532e36420b39906b828b210ece9e217ceda317f0"
    "en-US"
  end
  language "fr" do
    sha256 "479e561b9633cbef01b7f3caff3c7765a739c9879cf473736bd297661ae55518"
    "fr"
  end
  language "gl" do
    sha256 "e2dc19c634e47c56390613e5d1c9bc9021be8f1604564dc0602a0821c262f4c1"
    "gl"
  end
  language "it" do
    sha256 "995fcb85b189723fc8add0b6bc8e647492e16fcfa9b8f4096732eb83e28d9092"
    "it"
  end
  language "ja" do
    sha256 "68d28872394bef8e8d7ff07fdc7a245153fad1b744f22270acd91a0eb0e76842"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "a5e3acf9c1607c27f8f6c58d72cd406df5dfad301b0b8e62918da6d48bfcaa72"
    "nl"
  end
  language "pl" do
    sha256 "09268c499498dcec1dc0887370234ca69b4eae1c831e8ceef6fe4117b082fc50"
    "pl"
  end
  language "pt" do
    sha256 "5cbb67b8d6338019a2609e30044d53ceadd70e5cb8c952a4b8c06f88a7a4b5fd"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "e12fac0e3f8f53f4d70d9ed01fed522a669fbe4953e76883e0a9f18f667cd336"
    "pt-BR"
  end
  language "ru" do
    sha256 "a0de68836a6b8d2228ce26a2ed3e1197be918f32d66dc584cadb1a52d8ba32a9"
    "ru"
  end
  language "uk" do
    sha256 "7766ec43802da2a6f612afc61b8fc705528c3607a9442092d7a7277df34fe413"
    "uk"
  end
  language "zh-TW" do
    sha256 "24a79b7ba426268e07bcdfd786ba4d1ec5669fba1668bcf6fc5c56741047df1b"
    "zh-TW"
  end
  language "zh" do
    sha256 "60e225ae17ffee2ba47c916ad83020118c390709e56c65cc5ed36fc837c7e13b"
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
