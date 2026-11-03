cask "thunderbird@daily" do
  version "161.0a1,2026-11-03-10-08-12"

  language "cs" do
    sha256 "306f2e8a278383a50fd5b2836742a920b1a54401669cc8cfa7937fec585e1c01"
    "cs"
  end
  language "de" do
    sha256 "b3da85262bfa1d836f2276c92978b18d2dc35cf2cab96b603fa8deee36df0a4c"
    "de"
  end
  language "en-GB" do
    sha256 "d927fe594d977e815652b7a144da397df670c5a8b329222c26a3b9318d23a07e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "11419c9955f3c4ef88ee3a4b756379ca959db18e32a4c67a5be0939359772baa"
    "en-US"
  end
  language "fr" do
    sha256 "6d8c91be942978fab199c1f3c962a49d6da42129a19a55138700f67aacb5cab4"
    "fr"
  end
  language "gl" do
    sha256 "ed73daf8e8d12b87656bb69d4f8b15bec5d12a2fb8c7abae4f2e56600a6fc5e3"
    "gl"
  end
  language "it" do
    sha256 "0df8dc9c5a9869547a489d847f97873f614386408f927dd452e50cc70c0310a4"
    "it"
  end
  language "ja" do
    sha256 "c7086d4adc6a23ae46e9e048b6aa0389e247b550e804be2eb70c47fa41a24984"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "2ce7a9762ebd018461d1414cc11906f61f1b52a49c126a3ad7e0c7537d7aa9b5"
    "nl"
  end
  language "pl" do
    sha256 "49ecd190e7ce8c8812031751f3032d0ad4fc8015056bfdfcfd54540c45250471"
    "pl"
  end
  language "pt" do
    sha256 "7cf2520a8bd7ed0fde55c5e5394cd70a6bd7f6c70d134754eba5f59ff00c8b89"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "40ea5750e5926cd72d686842e4f442af64dd880bde58fa31f8028e3b3dc487f3"
    "pt-BR"
  end
  language "ru" do
    sha256 "51cb310d326c265dca68c142af139196e8594adcf61c88ee9330a553141bae5a"
    "ru"
  end
  language "uk" do
    sha256 "77dec912ed709cf2053a4832843aeff39992ae872b1d443f17426b72bb826eb1"
    "uk"
  end
  language "zh-TW" do
    sha256 "9cb5d557263bd117b41dfa0fec2189cd027d1245c257741b90bb77f9b6f682da"
    "zh-TW"
  end
  language "zh" do
    sha256 "fb5b552d6fb65a9f08ef032122a2505af640c12c67264b9dce2fd3c22849a290"
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
