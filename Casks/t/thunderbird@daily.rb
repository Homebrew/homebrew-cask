cask "thunderbird@daily" do
  version "148.0a1,2025-12-29-06-56-25"

  language "cs" do
    sha256 "6745809ad752c210c5b6f706b8f82ae45cbcefaf7f5d74836548d42d11537896"
    "cs"
  end
  language "de" do
    sha256 "223111e3a41d469e9c0a01e3d540158979a99e8ad00bffe8041c87bb958faf05"
    "de"
  end
  language "en-GB" do
    sha256 "cb48832d3cab411429bbfb0d5581c5f1a486070729b340fc298b3fdd6c718991"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3fcc6ccb9f10f9c514f216e3b0d88e45c2f6e1302c8732ba2ec6ab04da946dd4"
    "en-US"
  end
  language "fr" do
    sha256 "56eafd9bbc891d14a2a0a491a0d62a73e8e6627546349b54112016b8d4d8c428"
    "fr"
  end
  language "gl" do
    sha256 "80646322afded48ba99eb51e775df082ed021935b5409bd187b86a83fa003f5a"
    "gl"
  end
  language "it" do
    sha256 "0589ea25315c8ac03beee76f5ba1171b2fea2e3885d668bc49819791c067cb90"
    "it"
  end
  language "ja" do
    sha256 "9f11545625ba7fc210b995bc3b20f29b992cd6ca43ac10de96ad08dea492b07b"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ad3d63987cccee7e78eeae6f87b9f736db24f92593afa076af3d44cc3c3af381"
    "nl"
  end
  language "pl" do
    sha256 "012aa01dc706ba06bca31c06d72c93e9c45200126004b5e8e2091fa985e5d01e"
    "pl"
  end
  language "pt" do
    sha256 "9684a329b2c65c56c8836d2524bd949efe684bbf7ffb29de88ce579f60d4fa6f"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "4519c0b579bc557fdd0d7730859fd544f3fb316a8d6205db6cfa4671e5a1652d"
    "pt-BR"
  end
  language "ru" do
    sha256 "918cd3d45071e6525669d96a0e3d4de82fb2a01f86421a7855f3ceec52fadfb2"
    "ru"
  end
  language "uk" do
    sha256 "d30a8c6f3fdd3cc6c6f63589a11ad4c6126f86896d43a841bc2aa2f5348047f9"
    "uk"
  end
  language "zh-TW" do
    sha256 "5a074ca0a83a4fd9748f637d5604f558a40be12492c31550b9d80cfbefa505d0"
    "zh-TW"
  end
  language "zh" do
    sha256 "c26a21e0a6a602050086f2f3000525f1b953b72cdee6c3219cbdb23b6eb9a535"
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
