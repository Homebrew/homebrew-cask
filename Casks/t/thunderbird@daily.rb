cask "thunderbird@daily" do
  version "161.0a1,2026-11-02-10-09-16"

  language "cs" do
    sha256 "6c54bc148c9b79347cca8337126dd99c32f59942ea2cf05b78d5e2ee28d6abf5"
    "cs"
  end
  language "de" do
    sha256 "9909291e7a800f9b9f0705854c0a1480119dc2aac2638c03d9fbaf850ffcf731"
    "de"
  end
  language "en-GB" do
    sha256 "55a6ecfc37c658b92bc74e4f1f09a2c20d74cd02c5513d8307de7db8e4378e47"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3e48c779c408459d3a2ec18fda62851457c81521149d532a73a3f3c52ab46cad"
    "en-US"
  end
  language "fr" do
    sha256 "cb52a95b72c994d644b19809b80d5bdcb9b694190a02400ee6ede3cf468d5e5e"
    "fr"
  end
  language "gl" do
    sha256 "0374c76582dfb476ea7d44dc3a9581baac45e43758747650010423afecb0e576"
    "gl"
  end
  language "it" do
    sha256 "6fba708b9a8adfa255bfbaad0c6b2e73665ce9c464ffbc7f058b83dfa5d1f2c9"
    "it"
  end
  language "ja" do
    sha256 "b2b9d46dbacfaa7daf4ab1d83cb93cd0491d2bcc2b203fa8625dd7e10c6f7186"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "36a226596724ee6f7de4d31718a4d7520640f61cb46f5703c84605ce6d612b97"
    "nl"
  end
  language "pl" do
    sha256 "85ede6f282d652bf78b1adc66ff235a935038862f6ccd60a990d8545024e0f12"
    "pl"
  end
  language "pt" do
    sha256 "e60ddc8448e8920b28bb7890a4a7ccb3e95d5b5e69de2797987d5369eb3351ea"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "adebfa28edb8347f70e6d969ac6cf20e99ffff4915d2facd9171c9d0193793c7"
    "pt-BR"
  end
  language "ru" do
    sha256 "daca007652df173183084ec75171baab4edb57ef924c3bea05c26e3c75595bcf"
    "ru"
  end
  language "uk" do
    sha256 "73b9ac6c3f2acaed854a137ccd0ea308b0b79194ba918566e1859a4e99258c6b"
    "uk"
  end
  language "zh-TW" do
    sha256 "8066f797f79f3154b08beb33f126fc07594c1d200003f8efa3c1de8872a429a2"
    "zh-TW"
  end
  language "zh" do
    sha256 "c463c42500e0b93fdf1c7368297c66e6ed3427d631a68d5892ce47d2d56991c2"
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
