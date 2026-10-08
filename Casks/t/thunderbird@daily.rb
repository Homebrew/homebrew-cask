cask "thunderbird@daily" do
  version "159.0a1,2026-10-08-10-45-40"

  language "cs" do
    sha256 "9b50b05837c845c640ebf61306c6cdeff6a6003af34a5bbfadd96aabcb06f38a"
    "cs"
  end
  language "de" do
    sha256 "6b829d46d0db416705437498f1a75cb23f848e97b5368bac417d1b053a0f574d"
    "de"
  end
  language "en-GB" do
    sha256 "a937ef60562642c1d09256fd5bae71d92d751f708665bbc35c869d64d4ba42bc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4189ddf8b92f774402ecdd21f0a142edc4616c90c1ef3ce277ef54b714520365"
    "en-US"
  end
  language "fr" do
    sha256 "68294fe7dcfe0b2ebbdfde955d78d13844aa51b90a26407435ecac3fd71cc76c"
    "fr"
  end
  language "gl" do
    sha256 "b59930c5ac9bdc929017d75664f31966b9d9d356af0ed5502f10eb552cc10fac"
    "gl"
  end
  language "it" do
    sha256 "b618964100fa2f36a3485b432646aa0781b82a35fbc00334d763c734a94e8c0d"
    "it"
  end
  language "ja" do
    sha256 "f8bc9a7929123a894ba5befaacd17cf583f98a7fc664c3d95ab54891fbc51522"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "038ab127e132bb25daf719cad72e0383bae363143bb61a48d23ac56e9b8f803f"
    "nl"
  end
  language "pl" do
    sha256 "7af3898314f15725eb47f411c98c68417b7880ae2184327c3328760ec82c3c03"
    "pl"
  end
  language "pt" do
    sha256 "88c2723a3eac8636c40cc900ef6eca72bcaf95aa68156f31e0e129c27a88db53"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "a5d160c79b4442fd0bb10c0d6c7f0490d678a49dd2f4d9938a69094b566b4ea5"
    "pt-BR"
  end
  language "ru" do
    sha256 "e86906d5612b7e10ee580d4a0230f7a7f65aa11790710b438c2f4ac14b5314ae"
    "ru"
  end
  language "uk" do
    sha256 "c78acf17d5a6106935b3d0eab4c7b63516f2a967d00dd99ab64525f3005e6321"
    "uk"
  end
  language "zh-TW" do
    sha256 "9a8a6e8fddbfb4d3ad3c49375386f9939dede8022a9e54e948f259e2d0f885bc"
    "zh-TW"
  end
  language "zh" do
    sha256 "3d9bbf5d849e9e3d2c8d09ce15d330a79647d022ca6d2f90411dd139fe69e29c"
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
