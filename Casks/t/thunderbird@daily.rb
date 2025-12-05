cask "thunderbird@daily" do
  version "147.0a1,2025-12-05-10-10-45"

  language "cs" do
    sha256 "e64a46dddcadc8e3d9f993701d96fd6f881af26d15b8ef55aab93943ac01b4af"
    "cs"
  end
  language "de" do
    sha256 "0caac025289468d691c3a521b0c4a0a4a2d7364764178ec00731e9cb082c8dd8"
    "de"
  end
  language "en-GB" do
    sha256 "6396b9e0bbec6fd68cea033e17193b8f7d679dd01855ce41717d845cbec836ac"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4f7cbbd743ee6a29532736b03d16bbd9b2ebee4442d4f736287180adc2eaf737"
    "en-US"
  end
  language "fr" do
    sha256 "e3fce7f83f6ebcad789d25a509defcae3ae69959fe59790739796154e501aa90"
    "fr"
  end
  language "gl" do
    sha256 "999bdac57581533030e8f48ff9a6d4217e1caf9cb82d6204d7e51ffd6866c64f"
    "gl"
  end
  language "it" do
    sha256 "683ab22a95720834831bcdbdc14610271c7cb9f51a9b7569218b2fbedd7a6a28"
    "it"
  end
  language "ja" do
    sha256 "55e1d086930bfcc8794286291224b53df48929f82adabc791c692b759055d69f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f6d01837f8d3c1ea646391ab66fab41805318ea38fb093c7c374762b2a54f8f5"
    "nl"
  end
  language "pl" do
    sha256 "4b8a85a1367f93a57b8b9834e7fe8e7c7078ec6ad1929f325b109a907107e042"
    "pl"
  end
  language "pt" do
    sha256 "65fd6645625694a246c94b913463fc3660ea6b2953b2381fe97267425a1c5e45"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "872edd0d7eb0e664ef94f30108c3b72bd7693253806b09a8a7cf55cf30adc109"
    "pt-BR"
  end
  language "ru" do
    sha256 "e72fecff0f1b08cdfbef648dbb5cfde5729fe8f97ba170e0233acf97fcff53a8"
    "ru"
  end
  language "uk" do
    sha256 "a33adfebd24f444e74d6bd869ef723d0f1588ec7e69e303b250f8c3acb715f36"
    "uk"
  end
  language "zh-TW" do
    sha256 "87aded532304a45d43165dd8e1049c365a846b5601abc26a081955804eeadcd4"
    "zh-TW"
  end
  language "zh" do
    sha256 "34d03d31b5919e7843241b5f07d01634c203b7718f3d399376d8a6b4f45e9ba1"
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
