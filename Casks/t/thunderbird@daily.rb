cask "thunderbird@daily" do
  version "144.0a1,2025-09-09-10-31-28"

  language "cs" do
    sha256 "ca1398b14bca1643dfc868ef5fe969e18b65b6982f86198554152eac13fb5512"
    "cs"
  end
  language "de" do
    sha256 "0568edc150f0702c2c41d6837d36ad8766cea60384551924933d0c9a610fbf4c"
    "de"
  end
  language "en-GB" do
    sha256 "be4b22afaf9c9355632c2046ed2c3c6abf240f0df3730c487884f5ab9ccfd126"
    "en-GB"
  end
  language "en", default: true do
    sha256 "24a4ce690085e76380701d00cd2949c66544387fe4b647dfce0129026ebdd023"
    "en-US"
  end
  language "fr" do
    sha256 "4ae9111a88fc25b00945b4ab3adcd52625b7ca255e95ce730819830f71054516"
    "fr"
  end
  language "gl" do
    sha256 "3981a08664e21be7abae5c63d75987eb3e2388130def49f3304967b4121c2390"
    "gl"
  end
  language "it" do
    sha256 "78e82a4199ef463223047347047648a1d711bf727eae182ec166246860fe3412"
    "it"
  end
  language "ja" do
    sha256 "095c5b58fb8c43f5515fd6d663fb71efd80b661d235ae69f714e1836279c6009"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "096a9b62cf306fa49760f92917ee1f43b585376b8244d8d764b4f76bca4c24d8"
    "nl"
  end
  language "pl" do
    sha256 "396fda278648c9adc4c33108960292171300913eb179d0353393cb75bd3573df"
    "pl"
  end
  language "pt" do
    sha256 "2e8959762f5d5b3981d4396224a7f740a725781c48b3660fe24da2cabbac464b"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "1f33d1116438676dc249e07a502bd343606a22366c2f33ab909009dc3372c7ff"
    "pt-BR"
  end
  language "ru" do
    sha256 "0abb582aee76b769d63d1870f52165d597ca901a2de631b7995d109444391b77"
    "ru"
  end
  language "uk" do
    sha256 "734bd8862b6548626dcb43409b83de9c7a70b526852153b193839bd06828c97b"
    "uk"
  end
  language "zh-TW" do
    sha256 "63c7ed5cbbda89bdb52a0037c703123e60576c9ff0013f39b93a3f9744929d68"
    "zh-TW"
  end
  language "zh" do
    sha256 "ba0383ceabc8d237dd54ed7d6d9653ceb7db6a06984b5bd2f0c57b6d48c2580a"
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
