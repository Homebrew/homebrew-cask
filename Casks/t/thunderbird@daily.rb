cask "thunderbird@daily" do
  version "148.0a1,2025-12-12-10-33-28"

  language "cs" do
    sha256 "e4adc89fbbf83aa5137e7f4f9f824728bd31782cb9fc6721aab494314b5121e0"
    "cs"
  end
  language "de" do
    sha256 "994c973dea28e69bf5698f7021074c296dcefaf4ae3c02b41746896bcb048b18"
    "de"
  end
  language "en-GB" do
    sha256 "fe9f9060a2ac4886e1030a7257633151e857145cd0314ab5f60ca207bc404f34"
    "en-GB"
  end
  language "en", default: true do
    sha256 "59cd3b525e2711bd4d59ab7f0e728fa29b0664e40cf83d0e59b2e012f291e1ef"
    "en-US"
  end
  language "fr" do
    sha256 "ae48910584c77ff9625a84e47ab2b766f763d66860a706a1c72ca69c3fa6f336"
    "fr"
  end
  language "gl" do
    sha256 "e14173479c91d79721649c1129520f1fa53b184576d3366383c751c872f97f05"
    "gl"
  end
  language "it" do
    sha256 "5866b41d8b4e7da73bf1e09d3aae596096d77eb3ad6ba39d8a225a0357237cb0"
    "it"
  end
  language "ja" do
    sha256 "4edf3dedafeb64b8a7078b005830473560eb45ff262659d6c18a1a383029e108"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "b853b17a2679bc21237bbb26e129b7596c24d6daaf3e4ab5640a7a75f14f0703"
    "nl"
  end
  language "pl" do
    sha256 "523d19798e142da6cc78a2f8f9c7bc4333e41d49129644dd8e50e36b513d6a0e"
    "pl"
  end
  language "pt" do
    sha256 "7a6444a80d2532eb478586af93abfe725ee783932564c61ed916f294b8849a19"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "4816874760688fabfaba08ce575a5e2b3a8da101442ea645649db5a6461eef4e"
    "pt-BR"
  end
  language "ru" do
    sha256 "85b75bcb240adf74ae9420ef39ba96be7fa19b80826c20ce69244aaa589a25b3"
    "ru"
  end
  language "uk" do
    sha256 "2cfc62ee424fb993c5c0de9041a93b5758e648a467a134a8326d45470d59d0c3"
    "uk"
  end
  language "zh-TW" do
    sha256 "6fe4364d9f2b26cea0e67983faf7901bf91bc59f045e30f6b8a29fd990fc6067"
    "zh-TW"
  end
  language "zh" do
    sha256 "dea0ec543841094cf2373ccbfbfc0a312679c81ca196848a320ce1b276438a59"
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
