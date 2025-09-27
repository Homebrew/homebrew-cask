cask "thunderbird@daily" do
  version "145.0a1,2025-09-27-10-03-10"

  language "cs" do
    sha256 "70664dfd4d08672d07f7b510e34d82cf76682fd5a6cc544985b64dec25970b70"
    "cs"
  end
  language "de" do
    sha256 "bdd0a5a7b421b01b9c3280ee9fa1e3476798f709ed6962708d1aafee43a30b3e"
    "de"
  end
  language "en-GB" do
    sha256 "9e6c117d164e6d65d736c7819c9cb58c4ca4132bc43e0e70fbea20852c7fa9af"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ea99ae3021ffb801127a202efb28b63b7ac777db97bbfdb6b78b3e53ae04ed3f"
    "en-US"
  end
  language "fr" do
    sha256 "88190c13cf92da90d8ebac494c0dad9395466d8cebdaa65215de89b819fa1139"
    "fr"
  end
  language "gl" do
    sha256 "bd54e0cd320ea149281a8f1f3a55bb7bf0f1cc40a8ae67c2792a936dcfbe8d0a"
    "gl"
  end
  language "it" do
    sha256 "412b14712ae8abf41ad2796599940755d4c6c40e301f2815abbc702a3f4ca46d"
    "it"
  end
  language "ja" do
    sha256 "8e19fcf97f6fbfdd3a9477439fe0f3b3c72514f885c1af83035f2ee49228203a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "55b00c010006f545597d64e8e89a08b83bda4576f8ef3f68c1c8bf518b49d407"
    "nl"
  end
  language "pl" do
    sha256 "61d533b3c70a482faa3c1a4449be1a09539e2694ce161d83188446b3ccc13630"
    "pl"
  end
  language "pt" do
    sha256 "a4f81d17ef471499e71f583f58ca449a11792f87254506c99b6ce3a5e001dd15"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "4ec9154c6f7250d1495f772d41c28a5966c2d1598e51409b69c747ff2a13afa9"
    "pt-BR"
  end
  language "ru" do
    sha256 "aae57a5772ca1b6f459a54c9634e3c0e537162e07c6262e0393efc1929ca4230"
    "ru"
  end
  language "uk" do
    sha256 "ccc54d5b09b6f379fbbfef53ac131c32a3bd2deeb6b7b3ae0dd178817e02f586"
    "uk"
  end
  language "zh-TW" do
    sha256 "6b2d707e34aa80a8e7ec09344cfa94b645e970c35503cb8c5bd5a85ff20e94b8"
    "zh-TW"
  end
  language "zh" do
    sha256 "083609f4b4eb82a002a359c1dfd8ab8eab0a5305df3614b76697147792a354ba"
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
