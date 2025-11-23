cask "thunderbird@daily" do
  version "147.0a1,2025-11-23-10-29-22"

  language "cs" do
    sha256 "2f7834ff4dfc8ef03e1988b138aef66dd22ec1765ffaeb5cf0ce91ef1b77067d"
    "cs"
  end
  language "de" do
    sha256 "f32358fe12ade95e6b9a137363e9befccb0c2828cdad0a92096f8ba36a55a697"
    "de"
  end
  language "en-GB" do
    sha256 "ea5e7c756f40ec0c11108e264aaf63f956e8b35ea1afbd44fc9200e64b9599e8"
    "en-GB"
  end
  language "en", default: true do
    sha256 "db92f98f24a250570a0f5bef409f11f68dd0ff5b4625756aaff26340ccbc96e2"
    "en-US"
  end
  language "fr" do
    sha256 "02c1d3db889438c3a2560f1c986e4079d098d1ebfe46c0392acc3000e2840161"
    "fr"
  end
  language "gl" do
    sha256 "c85506b2677a61f2efe6ea8317145982809740000e0f5b987c56890c5296dabf"
    "gl"
  end
  language "it" do
    sha256 "58aa08f971020d4a69c9b64562f9e5860188c4cedde2ead27d4ff8e008d7e788"
    "it"
  end
  language "ja" do
    sha256 "f93958f61e3c73db9575374126ea8c32a0e49dbfa6fe3a9e746e38d768c87364"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e53cba3239404256f42c9e175c800be823c178ac8e6812df45703f8a666e37c2"
    "nl"
  end
  language "pl" do
    sha256 "6cb8787dab1e4b98368411c9df456d553024605d6c7e489cf213efddbe659409"
    "pl"
  end
  language "pt" do
    sha256 "e7f22083d2036e16a5fec918805be96a05f7ce44dc374ac44a1ab3a19c54d2b4"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "f8144a07d5bf88ad9636b30454f388d8faca932f78956efb56eca2e76a7045a4"
    "pt-BR"
  end
  language "ru" do
    sha256 "975df205ab5f06fe07ce9db7bcb80a2a7a75c4c4ef761bf5bf26670d0e70f79c"
    "ru"
  end
  language "uk" do
    sha256 "5952bd2340bfa0b8b93426c5e9d9d8b7096a6244ed0c5a48ffe7f1e75911ae2c"
    "uk"
  end
  language "zh-TW" do
    sha256 "8018f3c58fd9e65ede2c6217fb7c53c2eda725c68e0db6f5ba5455cbf2628411"
    "zh-TW"
  end
  language "zh" do
    sha256 "494bf95c022905870ac96635cc78ae52c45185f49ed255c0d8f565f8ae4b23c5"
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
