cask "thunderbird@daily" do
  version "153.0a1,2026-05-23-10-09-27"

  language "cs" do
    sha256 "6cfac9f575db31342760941f8cad2c43ee536f2e0e1a06580d3f9ab9460f5718"
    "cs"
  end
  language "de" do
    sha256 "830d34f066df75a1fa9d38898b490545e9922eaab98b2407fdafc9efb5b6bf7a"
    "de"
  end
  language "en-GB" do
    sha256 "5130d383acd415816ad6b46bfe74c9e8c4b61a7c1a05c6397f72990c32b4143c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "451bf6ca26a71829b792dcf4e7dc5ce8194160f53b43290b32e627f1235d561c"
    "en-US"
  end
  language "fr" do
    sha256 "aadd09b98ece88ebf2242197226c7554e78c5771f17aa66522c0376f1200bf8d"
    "fr"
  end
  language "gl" do
    sha256 "52367a43fcc8c98e512df03d44cc70c1c71c27f8fd5addfc83229ca1a4d2d191"
    "gl"
  end
  language "it" do
    sha256 "81e691c3daa86eeb704f4afeffc8132634032e86e56159c8b389e989d3a7ad67"
    "it"
  end
  language "ja" do
    sha256 "7474ef6bc66c19350cfbfef410d4f3b70e7233092b653ea7a3a3a5c3a9fd224b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "9420a40a45331454ff3afd53e14ad333af56c5e87964d784b62c834595b5a12b"
    "nl"
  end
  language "pl" do
    sha256 "8970e718b2f28dabbf215ec9f27904ff2a22d50be2e68a9bcbeb7b71592dc473"
    "pl"
  end
  language "pt" do
    sha256 "f091e2ac887d9d5639265430026552f468744fec28e18adf7fc9e982c318dc39"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "94414d92c6cd1f6c00aae84f04baff099e72499ac98bf8348823800829a05507"
    "pt-BR"
  end
  language "ru" do
    sha256 "bd5c94277d3afa3fadd89d3fb7fcacbe659594a02e68c1f0c394738b8d8c887c"
    "ru"
  end
  language "uk" do
    sha256 "eebe27e4da625a81cca8229f7ddeb6ea894fed15b599d08e6e55e8db0bc12e9d"
    "uk"
  end
  language "zh-TW" do
    sha256 "e4067fdeb52f7cb2d44927e9fb3b66403d79f0cc3bb851db666378f52c0b2626"
    "zh-TW"
  end
  language "zh" do
    sha256 "81da603d0d81381e7bcb5e46eca157e27cb45cbc87ce058084517f0390d5bf81"
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
  depends_on :macos

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
