cask "thunderbird@daily" do
  version "147.0a1,2025-11-11-10-24-41"

  language "cs" do
    sha256 "266d1cae2c5a2f8f5850bfba921a03ed006cf336a0383c7c83098c34c46cb102"
    "cs"
  end
  language "de" do
    sha256 "9e54bd73085b03d1b64c55977b6dc450f9f84635a802dde0bede5eb77ae8d652"
    "de"
  end
  language "en-GB" do
    sha256 "9461d53951765355991e4e94753a219dab986a56ee0b7ab16e1931b760f1fb97"
    "en-GB"
  end
  language "en", default: true do
    sha256 "7de5caa2b98d3c1b4321efe15e559a30f374bf2ae26d728408205a5c4b0ef8bc"
    "en-US"
  end
  language "fr" do
    sha256 "0f0b8bd11c5ce27db94e79a732210e04fb0ffedc65b8ad2c9dd37466169066ec"
    "fr"
  end
  language "gl" do
    sha256 "ecf40c2fa6f2fb0a03339a7e06cf8c968ff037aed8d67447b883902563744b3a"
    "gl"
  end
  language "it" do
    sha256 "0cb3ca5ad2fb35ecf68077b5c6503e354c12738ed5a180fd3d6b7ccec4bb834e"
    "it"
  end
  language "ja" do
    sha256 "c1e065f3f7c9c51ce156b0670babef3916b63fb0dc0c6f42a4131968de7a978e"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "64e8fab99b9bb8e77173bc9fafbb244a142efbd543e3fcdbef583e0b1e569edb"
    "nl"
  end
  language "pl" do
    sha256 "404d19a556ac0b29449a294e3deeb239b73df8f88ea289f95ce9dd0d692be2bc"
    "pl"
  end
  language "pt" do
    sha256 "b2f5cb05a2e0d5cc0e9cc2ecc2f887be905a0af0e939d36e26f67b34c91040d0"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "b7786a0a0c49c9dbc8a6009d5167c8fc14524af567fd7f748f8c07e0da65057a"
    "pt-BR"
  end
  language "ru" do
    sha256 "ae4d87f0c1037a56397efa6d472eb764699a1c93317559e036835a32d66b95e3"
    "ru"
  end
  language "uk" do
    sha256 "0e14f93f38761a5f816f5e258610f66a177ec99450185585d73e3aff1d56d1d0"
    "uk"
  end
  language "zh-TW" do
    sha256 "0f05db2236cb2c822d139d17056009034b62ef45ef11d5d9b7fedd41b5bb2c3c"
    "zh-TW"
  end
  language "zh" do
    sha256 "d1122145c1a4964ccb001a813aff5516622d7644ffddb7eea38f2adc33666640"
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
