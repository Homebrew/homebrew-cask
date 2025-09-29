cask "thunderbird@daily" do
  version "145.0a1,2025-09-29-08-43-32"

  language "cs" do
    sha256 "e7952b0d39db7b3867204fd387bf68ef648cfdc4c4d3f354ee5cf50ff5b6473c"
    "cs"
  end
  language "de" do
    sha256 "b1708abf9013c2b4e0c366803df09f0b64e4fab6b6f6ac428defa7da2ae4e16f"
    "de"
  end
  language "en-GB" do
    sha256 "ae63864b963e4087951fc394bf2d17d041454d2b93171d84f1af868f5b646a6d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "de1acb6bdb13ab97821f635bd65cab0aec68a0ff8a9bbeb30d13c1c410c863ce"
    "en-US"
  end
  language "fr" do
    sha256 "4b5a1cd97486a782b3a7eb3c0c1f6c4cdc435e38992e03684d7d7738bc55f490"
    "fr"
  end
  language "gl" do
    sha256 "217347a5779cb777c231539e457920a1e7263182cfe724df91c730d5a86d05a6"
    "gl"
  end
  language "it" do
    sha256 "40a936e365656917c7350bc3f87d9d3f33ee091d250a8d84ccf5ebf125e327c9"
    "it"
  end
  language "ja" do
    sha256 "8e09d3d04a3979d68063beee833b8771a709be65120c095b2111bdf1e28662cf"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "b183c3894c16064001284e0abfbc2a62abb6bc35d23c07a09e655eab29b3ce93"
    "nl"
  end
  language "pl" do
    sha256 "50d06b72fa5c8f1cf759115fe1521b3809449de60777fb75ae17501961a74848"
    "pl"
  end
  language "pt" do
    sha256 "2008b0806b4845c7836d7745a0efcffe9c0f97828162deb927b197ce11415373"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "0f56bb6a7f27e319702c7e0b4078eeea40b1cdd542985059ce1cb71e5eb5b4b2"
    "pt-BR"
  end
  language "ru" do
    sha256 "79870ef051a082d30bea58452bcfe2bbdc6a1ee39102ebbcf9e9a07a962fd573"
    "ru"
  end
  language "uk" do
    sha256 "b06fac65e5faaf46f0e6631cb27eb086bb9bc3174c6012956620d602b1c4ec58"
    "uk"
  end
  language "zh-TW" do
    sha256 "9d0272adecdd65119d2bc85ac4a309e4655125540f9de27dcf5b97de341e2041"
    "zh-TW"
  end
  language "zh" do
    sha256 "8c555fb257cfe7e5acf8ce2eecd088993af9e534e3f69c9a464cddd46d9f8c2e"
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
