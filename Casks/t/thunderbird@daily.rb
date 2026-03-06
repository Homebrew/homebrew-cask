cask "thunderbird@daily" do
  version "150.0a1,2026-03-06-06-53-50"

  language "cs" do
    sha256 "93306ef83af0307f6f7a3406c9f56f8d24528846d32168ae35ed7401e19c843f"
    "cs"
  end
  language "de" do
    sha256 "d95b90b5db24a7f4513939f74ccd51153ae486d5206b7c934d19be504526c632"
    "de"
  end
  language "en-GB" do
    sha256 "e13922256f99096ce94d23ee82dd478e55597548900533667994b5f3b7bb925b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1ef26a6b11e232bd7aac8a85d08df9bd24df24270671e1f576c0d459447fc952"
    "en-US"
  end
  language "fr" do
    sha256 "a642cf6db3c065b91000c501e74f5e05976e9e695a2a480ab0727416fbc20d10"
    "fr"
  end
  language "gl" do
    sha256 "c92b59924e1bca30b3869a5b9aed16cb7ba517a7d7ce3b705b4eda1d16ff9121"
    "gl"
  end
  language "it" do
    sha256 "3bea19b6b77799d96d2ed5418001637f0930042c7b4e9c33f7cef0b337f1fee5"
    "it"
  end
  language "ja" do
    sha256 "d2dc82c257c312a28e5a96516998290589c31bbca163fa420f70a8d84be415f3"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "aeda153f2a28f1bf22d2c4cfc5ae30fe913fc533cb859b4b39655e9d14033ec8"
    "nl"
  end
  language "pl" do
    sha256 "a4fef4f7a02306f9a3e8d7f611995c2416eeab77287753ba5159ae131c8995ec"
    "pl"
  end
  language "pt" do
    sha256 "60eae22c8b850dc5aaa345d87f82caf9e22f8c1fa24be66ef0c18316242147ad"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "fbb4cd4394264685605d45167f4882623e4429c5a592f5a13e35b67e54fee0db"
    "pt-BR"
  end
  language "ru" do
    sha256 "74eaa60d675fc4858cc2433ef7d86906226d2e99ae851b49b2dd509154719c9e"
    "ru"
  end
  language "uk" do
    sha256 "eaeabe0bdf2acd41c206d28bf3b0735c4d7bb22f63b318e5cd9dd78f2c794df0"
    "uk"
  end
  language "zh-TW" do
    sha256 "9e6910a77b768b00c3068b5512a2cce87a6d8486817b9e27827be77a7191f428"
    "zh-TW"
  end
  language "zh" do
    sha256 "44e0c5307389905580f8f6f9e68b2e9aa0200d64ebd93d7d96348a67213b3709"
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
