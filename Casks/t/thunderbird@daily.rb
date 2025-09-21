cask "thunderbird@daily" do
  version "145.0a1,2025-09-20-22-35-01"

  language "cs" do
    sha256 "9692f58a4b181c94d4c4fd50b9aa8acf22741b77204216aa5109e384bcfd68b7"
    "cs"
  end
  language "de" do
    sha256 "6bad1ba13d53ff2a7f703f89f0dc873a30abbbc27e67a8fc708f7036ff8a237e"
    "de"
  end
  language "en-GB" do
    sha256 "634ee311c6a3f343e12cb7f1385d0c1821686c7947a62f26c2aabd392be4144c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d3b082c1ef252659a22d0627a7bcc07de511776995fc07014b504c3cfa96ae20"
    "en-US"
  end
  language "fr" do
    sha256 "b9b662d5cf3f9d1f389fdd60ca936def58f97aff4ab71ff5fb5a69def6a66555"
    "fr"
  end
  language "gl" do
    sha256 "bec129019900a94f8131e2b28d8ce60fd6502c58d57448d387d9cf19c4340c3f"
    "gl"
  end
  language "it" do
    sha256 "4ff2c7408f8eeed22ffa6a2ec63f8394e41c7d26b01ae9e5443337a36f7911c3"
    "it"
  end
  language "ja" do
    sha256 "f3c957a760a222a32f4b1f5986b9ccade38043064e83934dde492584988cb7a6"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "cd240569234b237d26a941378f85b9754177e5c59642c074192db54b4ce929b1"
    "nl"
  end
  language "pl" do
    sha256 "1acf8b972d3fabcf7d0096d1d35ef9a461fa00fdbc5e314588644efe06ae1e87"
    "pl"
  end
  language "pt" do
    sha256 "9df7b94109963d9733d139857c5b42811471ba98285be6e525ce379f0080765d"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "3b2bc42c32620a4262a0203bdbb95ae740e80244286087cfb653391ed178be77"
    "pt-BR"
  end
  language "ru" do
    sha256 "4ff1f22a847b39e71a65d59ed83e4bf3299cf78c6a85da39013f4e31d157cfd9"
    "ru"
  end
  language "uk" do
    sha256 "97cf335a23051263e3590544567fd56da5a2027525aba57fc038ba8b3670867f"
    "uk"
  end
  language "zh-TW" do
    sha256 "3847d17b0365809507aef4cbdb9a47ea367868c02aa38d19a1833ab1ad6ee077"
    "zh-TW"
  end
  language "zh" do
    sha256 "e7c9d9f5e31d37e24a8352ca476ef3a8fda79710fcdb99f86b5f127955df720b"
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
