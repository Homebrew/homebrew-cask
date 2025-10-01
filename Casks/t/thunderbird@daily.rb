cask "thunderbird@daily" do
  version "145.0a1,2025-10-01-07-45-55"

  language "cs" do
    sha256 "c47f72740520ef4ef1f6ec8360e08d6a240e06bea512cd3adff976c9591104a4"
    "cs"
  end
  language "de" do
    sha256 "4061ddbc344aed4ea334fdadae2d12417ae49b58141b88f15b2f460bfa6d937e"
    "de"
  end
  language "en-GB" do
    sha256 "58486fc4ed2cd87b3bf232909be76b738314d984a210a0f970a8184cd98bf958"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4975e32963ad45be09173a127fd9cfaa5ecb17b93614d8d8884db11261e85fc2"
    "en-US"
  end
  language "fr" do
    sha256 "a663e643e814f2ebd6080c1e1e41589d5dbac0c84b51fb31800342d63a61ddf8"
    "fr"
  end
  language "gl" do
    sha256 "b38c94e4003225bad5490564bf0e77b9d950c0ffe7ceb5d6da45640546978909"
    "gl"
  end
  language "it" do
    sha256 "a0916a8db23a9daf32073b2d636d5719df4183843a41bb58b4566c17732ef690"
    "it"
  end
  language "ja" do
    sha256 "12314240c0fa30ea4852ca6fbafb995127284cda77d9554c143f895d916b1cce"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "b6ca57d5bd39ab125e29a8a67c59474a4790c0b778c83188049f412eed057b94"
    "nl"
  end
  language "pl" do
    sha256 "cd800768b720d74b5bd06d35cacb3010b6eda44ec0243b9c608676f5148e3623"
    "pl"
  end
  language "pt" do
    sha256 "5a06ba070423dc970f6ca2b63bcbd2d0aaa5b1fb31bff11f08afc38023ceaccd"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "079893dc761e676c6b5f08e68c8d2248b020962d00af965f841db03d86f7fb16"
    "pt-BR"
  end
  language "ru" do
    sha256 "b94c31394b0b3337d6637435a463e2eb356138952c3ec73df132c55d6bdbd935"
    "ru"
  end
  language "uk" do
    sha256 "b6a2cc124acf242ca75c52b4d4f4f6ae5e64dc177f808a1f0fff8b4620c80df2"
    "uk"
  end
  language "zh-TW" do
    sha256 "20f2578c33faa7822f56b5a928dacd79350f79576dbc7589b589ba291e39f51c"
    "zh-TW"
  end
  language "zh" do
    sha256 "8c136588d925a26da430c0a5e000ab54eced31208ca411c2c1299ae11ab98e78"
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
