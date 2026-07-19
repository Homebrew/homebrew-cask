cask "thunderbird@daily" do
  version "154.0a1,2026-07-19-09-59-03"

  language "cs" do
    sha256 "fbe198e79e3e56624cbd2ce7d0c126c409b57307896a8df2ca3b5da3dca60273"
    "cs"
  end
  language "de" do
    sha256 "b74d1a31ea16b40d9150b46f527f586272c77ada51f64fe3fbd32c152c6bc656"
    "de"
  end
  language "en-GB" do
    sha256 "b272c34ab71cf7b199492c00114ade2cc72e21bdce06fea8b47bbb7b3b3e9409"
    "en-GB"
  end
  language "en", default: true do
    sha256 "361f28c6cc1671cd8d9e0c7878b41cd5314eafce64b8dea10cbc99e321930092"
    "en-US"
  end
  language "fr" do
    sha256 "8a8cc9b5ad08831361fe41c8ca3445040aca7ca15b817df8c7a9b5531cd4a647"
    "fr"
  end
  language "gl" do
    sha256 "881d5ee04d3b1544603a3088190a067a8f8511ea365975a60092a29522fb12c8"
    "gl"
  end
  language "it" do
    sha256 "d0231ecc9e585e1fbebb5e3c70e981ea78ba11141980f51b1bbd4df3d249821f"
    "it"
  end
  language "ja" do
    sha256 "3f439f57854f2b40d75b2e9c27231ca7142fb4202afe5092ef86ca0c2bfd0365"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "eeaab38f21a567d3d52cea47495a61d9c20bf977241cb9ad7a2b454e7e38a4de"
    "nl"
  end
  language "pl" do
    sha256 "8e3390018eeda426f1de945dd3ab0d0cc8e0a6f1bb5161c50cba3bcdd90735c2"
    "pl"
  end
  language "pt" do
    sha256 "d35b355fe36eadf8ec5e9ebbbab6980670831c9fecc0b975734203abd7e1073e"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "25377544912ed08f2041d7dae7532c064b3df8912d9c52791416c5b016bc0eea"
    "pt-BR"
  end
  language "ru" do
    sha256 "27933bbb066b5fb326cb4231f4df3072ccd60ed6a3ebee38e4068fa6563a6180"
    "ru"
  end
  language "uk" do
    sha256 "33f87eae7eafebc416ba62da066f06ac0a633449a897ccd541980df4343a5d63"
    "uk"
  end
  language "zh-TW" do
    sha256 "9ef529a45ec0a807f004b14da241b19c0cdab5738d884018b711e4f04e89e0b7"
    "zh-TW"
  end
  language "zh" do
    sha256 "3ee66fed88104c02077882e9a9a0ada10ed8799308ea3b187f1ad52cd5765d14"
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
