cask "thunderbird@daily" do
  version "157.0a1,2026-09-09-09-29-28"

  language "cs" do
    sha256 "c16386d0d177332d0620cce46ea1f626d5b013a38487a3c320951e18870f6033"
    "cs"
  end
  language "de" do
    sha256 "d9237f44158ac40b09f53bdd196c21b7c11c82ce472eec1752ea2f837b2b04f6"
    "de"
  end
  language "en-GB" do
    sha256 "bc4a32801990f8ecd9f01c207b439954579947c2ac94c680d992e13e2de1acd8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8644944caab546f905e361ee61d5e4624d06b806dcdde471fccd8b24ebf89224"
    "en-US"
  end
  language "fr" do
    sha256 "01f7d35892e9f997319ef2b7485869afe24d2bf4eedbf1d73c64b1618c4bfcf1"
    "fr"
  end
  language "gl" do
    sha256 "2508bd2a4ca88006cde6748ca768203186280c338111186f7cff464d31470136"
    "gl"
  end
  language "it" do
    sha256 "bb45bed278ada41060b6487872be297eb5e4e0b2cc213fe0de7a8d528f78d004"
    "it"
  end
  language "ja" do
    sha256 "58893787b2a47b555ed9557372e49a7c122e79080792e103e7ad47611fdb3ae2"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ebe9920524233b994d72c04dfe13135d4f9e311d96f63730d5c6398f3df6f9e9"
    "nl"
  end
  language "pl" do
    sha256 "73b58cab95b100a85caae0356ee6c7fe8859a5744e76b95f4d0790bea126aaf1"
    "pl"
  end
  language "pt" do
    sha256 "50dde314f01fe60c13d09a0f900990dc841f071fab52fd4b77794f2a3e1a9ea3"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "a40381219da22d4e1a67798961fb728f940855a3d395592fce7ad159d005df76"
    "pt-BR"
  end
  language "ru" do
    sha256 "6a31a4b376a132f85dc7397abe5ad435c413f652e09ff0338978fff64b55e45a"
    "ru"
  end
  language "uk" do
    sha256 "65faba6b457a95a2d25ea2379986cbece7034a4409320704977e650d6de7c6ce"
    "uk"
  end
  language "zh-TW" do
    sha256 "1d6ac69151b9d15af3d187a1fd113272db34297203b0472c8e0b15aa1527b298"
    "zh-TW"
  end
  language "zh" do
    sha256 "5a2ce88ce64070a7fe8224e001098767092a66b089b34afaf945809817ec6c1f"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-comm-central#{"-l10n" if language != "en-US"}/thunderbird-#{version.csv.first}.#{language}.mac.dmg"
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
  depends_on :macos

  app "Thunderbird Daily.app"

  uninstall quit: "org.mozilla.thunderbird-daily"

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
