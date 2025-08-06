cask "thunderbird@daily" do
  version "143.0a1,2025-08-06-10-44-53"

  language "cs" do
    sha256 "884ca541a9458526287827b00543344b0a5069d36e41008007811d1afcf11f90"
    "cs"
  end
  language "de" do
    sha256 "4f1e4d7d1c3f13199f082e23d0bc6459d0b681a069484ca5de887adf86c7271c"
    "de"
  end
  language "en-GB" do
    sha256 "28b8108a228773ba9a5e5d20317fd8113b78e2cf92b48968d4395db579d61e43"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f7a6cd5e25a6a1ca01a8a2efe142f11be92b13b076fc0fb9d9aa6698fd12b66e"
    "en-US"
  end
  language "fr" do
    sha256 "f1101e6e5b376834f4944fabf9e1d34254592282df6760d61b937eb28d27bb3d"
    "fr"
  end
  language "gl" do
    sha256 "06b2c8e72e819cb7351ff8ff2099f08452221a7a28f3dcbbbd6756c5ace6dd11"
    "gl"
  end
  language "it" do
    sha256 "1766ecab640c1275eb3e4225176538dafb977c5f781c432484b8f71aafeea6b1"
    "it"
  end
  language "ja" do
    sha256 "7984089b192d4baad3e83ce0f66c9a67ae79f2d3ae3b9835a50c6a5cd543cca5"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "44d08d2bc9a007ce88b9d0f66d3245876da2519b5f56e86ee92eb230e82a5cb2"
    "nl"
  end
  language "pl" do
    sha256 "fa8e707d221e6a2533a2eccee418c59cb6b106b34bbca05600b4c6ff419a35d9"
    "pl"
  end
  language "pt" do
    sha256 "80503dd837046b3441bf41715a0cb9bde411d07ab8f8b30d38c69fba638e287a"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "2c645fc7894de91e9f056646767021da707072ae853a9482383af2bcefe49263"
    "pt-BR"
  end
  language "ru" do
    sha256 "0d0d37c1a197f6a40ce07486a97e67997b8d5284881366f61049285970871fd2"
    "ru"
  end
  language "uk" do
    sha256 "467f0def6dd32ae7099e275a425597c47b34c569e1128890d05b67e9229a46c4"
    "uk"
  end
  language "zh-TW" do
    sha256 "b34147843934071b3ae3922d59e6dd61f2800effb02eb445d2fd3cb7029b2e63"
    "zh-TW"
  end
  language "zh" do
    sha256 "6a941cc0d70b0d60d84f0b44de11ea39d96b686d5f80089ff746919adaf1ad33"
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
