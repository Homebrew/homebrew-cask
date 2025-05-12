cask "thunderbird@daily" do
  version "140.0a1,2025-05-12-03-34-29"

  language "cs" do
    sha256 "4e7a8727e5b204f95679f8855e8c44d113aa617c98722b083e94b74e5f697d59"
    "cs"
  end
  language "de" do
    sha256 "9fd4241627b3d06247259d29ee33ccbac2be19811acad1e48253c5ebdcdd238d"
    "de"
  end
  language "en-GB" do
    sha256 "6784443630ffd9ccf799baa54e3a77f2158b05b0debb03778e157913e8528996"
    "en-GB"
  end
  language "en", default: true do
    sha256 "be82c60a6a02db7c00dbdb7254ccfd048ca30a656d8a4786c07d671e53267f45"
    "en-US"
  end
  language "fr" do
    sha256 "195af4cf75e1a6455b0b6062abb6f5ad6d53143e5c51f0193a7155d5a5b0b8d2"
    "fr"
  end
  language "gl" do
    sha256 "4b05fe3ec0b12041916b1ea2714952f75083d91b1e0fd46477b5df7bae904d8c"
    "gl"
  end
  language "it" do
    sha256 "a85b880cd9b5db012d49f31ae53c953f30a6364580cc19c258dbb5f09be2c154"
    "it"
  end
  language "ja" do
    sha256 "84650c12638e7020ded11e88923bed286abc984e0afd4b003d85bba0f1606e6b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c9a120e201a9a9a6fd39016903fd12891b60f6c46819f4db5e284e6827f713c3"
    "nl"
  end
  language "pl" do
    sha256 "ba38ba4359b4acaebc36040c53016d03716fd17e30369ffb7807a1bfb6746fa2"
    "pl"
  end
  language "pt" do
    sha256 "8237cefabfb2989e1c241611bdd38147501ea901839c78fbdc8bf8ccbfad8836"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "9d4cbeba1c67806b0cd0408cc200897994e15ca90d9361b13af98139a8e04cac"
    "pt-BR"
  end
  language "ru" do
    sha256 "dbbc9a30b26562d9577d585bd176494c29ffe06c3f0c0136be58d6ef6f12f04a"
    "ru"
  end
  language "uk" do
    sha256 "214f850f57f56cb28645dffa3da343454f78f25ed96932209c668ea462b73f6f"
    "uk"
  end
  language "zh-TW" do
    sha256 "cd9ac915fc0693f2df85ce1f5a01e059f2c7feeaaeff5ff113dcfe99926a2feb"
    "zh-TW"
  end
  language "zh" do
    sha256 "175c3a97301d77fb20814448bac3bd4c81c0ad2baf91a228565b5afe0ac392ea"
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
  depends_on macos: ">= :catalina"

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
