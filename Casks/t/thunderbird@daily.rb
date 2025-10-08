cask "thunderbird@daily" do
  version "145.0a1,2025-10-08-10-38-43"

  language "cs" do
    sha256 "4681a89f05cc449532461e89d64dd21b3bcbb5874ec31aed4c6af6284d644d09"
    "cs"
  end
  language "de" do
    sha256 "3fcc1de933c855cc5bab65e221c232934fcf58aead43f0ea116c3707a0424a4a"
    "de"
  end
  language "en-GB" do
    sha256 "2d99b87f21d080e5bd3bdac1502524f00a325c6f143da47a4cd4825a3df632a9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3febf96beb7e47694198b280527572c5a0422097a072eb8d5cb17f03fca4e678"
    "en-US"
  end
  language "fr" do
    sha256 "5d63051b16f27e0d7f58d94738fc6541b0834d4b5ca76343b29ce842d4363ad0"
    "fr"
  end
  language "gl" do
    sha256 "9012a91cba786c8c343e68151ab82538036f43f81318444fded6edbd51ff3d7d"
    "gl"
  end
  language "it" do
    sha256 "11abd480cc32009fdf1474494e45b8b3a65debabc373f80c623fe456d1165b4d"
    "it"
  end
  language "ja" do
    sha256 "a4a1538b46a88d7361ae89ebe00ef0cafd83115724250a784a64b80710e92325"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f56ab3ed8c7fdc90fda554b60fd290053310bbdbf1877518e7c1f79fa18d2be4"
    "nl"
  end
  language "pl" do
    sha256 "39a4693f49a593123028975d889843d5d00d17ca093e50ee07869c3554d167fa"
    "pl"
  end
  language "pt" do
    sha256 "e682cc61b7ba1a84c97af857d435a81aa405032f4bbd029c4e9409dd73d4c053"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "bf9d9f1bdd6a94451ab87555e43c0dacbc455152679d20f7af333e2f15df7a2d"
    "pt-BR"
  end
  language "ru" do
    sha256 "87cf512628016583937341e9ab4646a9c68d814c430a6d248f069712cb8bc90d"
    "ru"
  end
  language "uk" do
    sha256 "e16a48c2e09a0b1bcf60e000fab9384e4813d74b7b3de6557df5e62ee696c46e"
    "uk"
  end
  language "zh-TW" do
    sha256 "0c6d6aeee6ecea5225fcb2f2b6cb1bcdb545be13db1fcc7b07f5c281ad058c1e"
    "zh-TW"
  end
  language "zh" do
    sha256 "d5075790b6394207a76182db2fb4105be02f0e3ccb6d874c538260402043db8a"
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
