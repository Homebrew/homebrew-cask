cask "thunderbird@daily" do
  version "141.0a1,2025-06-18-09-55-33"

  language "cs" do
    sha256 "575e5eab0d2a4fdc0e7f910b9d9d58dddad4a90671a2048bc6efdfd7c68671d9"
    "cs"
  end
  language "de" do
    sha256 "efe2857e30f4847b1f4f46e64f27a174ab5f3d5175499249a90c7c58abd37437"
    "de"
  end
  language "en-GB" do
    sha256 "cf749bdcaeb23455b3fcfb3d34374f5a567032c56502d16c363a12d277ea216d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c55d88f8c09d5376b327679aeef020f457e1934209a9678933972eaf7fb547f9"
    "en-US"
  end
  language "fr" do
    sha256 "b412cf37614da08b77c59e2d022de7e36e18fa0b82bd11d49a201db7ddeed2a4"
    "fr"
  end
  language "gl" do
    sha256 "c7276aa423bb6d90e0689cd9fb06d29b12258165fddce1b72d473e0a90aa2133"
    "gl"
  end
  language "it" do
    sha256 "78ded68a72b7264ccba51cbb3fb56f1a02ea261d754c630a69db04910d7f787a"
    "it"
  end
  language "ja" do
    sha256 "400c1052c561597b77fa42a134c45c76cfdb301f27c0017e5768e94669059220"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "0bcb52504d6817ac4a8dab73bcdcdab4e8e2a84e969700fe03b0dea399eb541f"
    "nl"
  end
  language "pl" do
    sha256 "996c46b5e80b95ed42802f8aa15a61b4079e8ed708690eea7bd568ea96b50f93"
    "pl"
  end
  language "pt" do
    sha256 "dd412a4f71ab25e680de871a61ab024e62594fddac723dc68692f85ad334f60c"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "1aaa43b96aa5054fd14ae806d6b88bb8a663c10d032ed3c61987e6514f14e1ce"
    "pt-BR"
  end
  language "ru" do
    sha256 "42922362d8e13fb4391d2efa2586abe87ec505a14779100511394af027935c28"
    "ru"
  end
  language "uk" do
    sha256 "11a05abe9419995082c46c917a831f7c034e6ea36a9c58db159c0aba14532594"
    "uk"
  end
  language "zh-TW" do
    sha256 "8f6b802035759af7f78ae564bf6d936090651d43560f94f1645290be4f281816"
    "zh-TW"
  end
  language "zh" do
    sha256 "e88499a76b3b77525bdbdc0706aee43ed0896cecf17c36b5adc1333d529e5cde"
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
