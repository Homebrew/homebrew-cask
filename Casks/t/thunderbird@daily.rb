cask "thunderbird@daily" do
  version "148.0a1,2025-12-22-10-57-15"

  language "cs" do
    sha256 "f59193e98ff88bf4e8eb28919bf50fcc58b190ea1151cb21b2ebc8c45430cacc"
    "cs"
  end
  language "de" do
    sha256 "43fdca10a9dcf53bb2c2de7055812f303f64950386a5af1bbf395364564ba0a8"
    "de"
  end
  language "en-GB" do
    sha256 "b96bcab942c73e905e2ecca9dad632a53e8339754049877706cf0c3be693a706"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2e93d02ecf657dba64f4f22493ad669f5364529033f5217595ea079ab91b9738"
    "en-US"
  end
  language "fr" do
    sha256 "5e8cc08b8eb8dd2f178b70319a1f6f7a73276a02edc5580afa76c36adc010e39"
    "fr"
  end
  language "gl" do
    sha256 "9ee16551e6502f57577b97c52e13944b3bdce49405606561d5e6246e92e37265"
    "gl"
  end
  language "it" do
    sha256 "b88f19b64bf989b5cd8d7fb89579b803c6ce1cb018a74d57e38493d1b430022a"
    "it"
  end
  language "ja" do
    sha256 "9878ef7f1879b984115e7f2a5cd8ea83b4d02484aaabdb796609b135ab4f49ba"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "227b897114cafb0e8bde4bb146ae642c8212e363054b4e61ad765e31904c9ff6"
    "nl"
  end
  language "pl" do
    sha256 "c640e09d2ade5f9a3c04a2f7d63c61e2a47a40a78142ece51c496a1d1e96b475"
    "pl"
  end
  language "pt" do
    sha256 "247735d17685ff2d90d35844ca7507ce62c732f853731e38f5eaaa87c5f56ea0"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "961c1aee1e45b50f29d70654bc09169fc9c1fd8c5166469538d4defca13faefb"
    "pt-BR"
  end
  language "ru" do
    sha256 "0e4f5a83899305773c7966031d6ef42a50689d94fe6c5347b892bb39023eabed"
    "ru"
  end
  language "uk" do
    sha256 "df46fc9ffa730d7f680bd7e94d0d71eb5b9bf5b4db9a1aa0c9eb17fb6a1dc229"
    "uk"
  end
  language "zh-TW" do
    sha256 "9097f3dd11e3135bc04b58d941ad99ddf5acec8728de406ee252db7b5d7435dd"
    "zh-TW"
  end
  language "zh" do
    sha256 "d90de843b6b6947e8b7429acd875dfefd45732880567ebda89b54c4447a7a529"
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
