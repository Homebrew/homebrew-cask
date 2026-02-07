cask "thunderbird@daily" do
  version "149.0a1,2026-02-07-10-31-12"

  language "cs" do
    sha256 "072764ceee013b6519290e3d538a895a8393f0727fa1ad10bd73778f849c680c"
    "cs"
  end
  language "de" do
    sha256 "6b26ebe81236d7ca9dee082ab22988420a376857523e5abf0838c0d830196ff8"
    "de"
  end
  language "en-GB" do
    sha256 "43e7723d837d43c0a15a1840d08c4659e8bda293fee6e9509d088f76b3bdf312"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ecbb9457472f469f6875311d4460b14bb03f2eee8be0d6bf9e561fddf6e2d65a"
    "en-US"
  end
  language "fr" do
    sha256 "b41c7a748ae51c6b185a16ea25652d53e69f3003e031e1b4e9a71d1346ce9e57"
    "fr"
  end
  language "gl" do
    sha256 "89c3be56e1f9c0e9fea03179db1fbbd53c511a3f45c21800931dd3efd79e73b4"
    "gl"
  end
  language "it" do
    sha256 "2cf5e2c0764826e6653d115131f8cded4b0fa39a6239be0f151cc049c301da21"
    "it"
  end
  language "ja" do
    sha256 "5944f01cce82bc9feae7e8ae45547293e6d1d182b976227b2e1d253ebb0b99a1"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "a933dc1c717a074494f58b879a29c7cc5e27657d9c6989b1ca04488e3d6674a5"
    "nl"
  end
  language "pl" do
    sha256 "cc54a466c55bcc7450ba9859bfdd6dbb40f94e01fc78c6c6f4cfe756b53eb98a"
    "pl"
  end
  language "pt" do
    sha256 "d9481c1feaa179bd3113b98e2f8ac1e7b8c68760791da28d109c28288e62ad21"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "ba4c596a8691b5d4d115e594cd6b44a44c38afc6a96b8c1b8993dad8bd34503c"
    "pt-BR"
  end
  language "ru" do
    sha256 "6a4cd771231cce62482b17f6713d5307b5175f08e7b65864efbb4be353811113"
    "ru"
  end
  language "uk" do
    sha256 "883563be944a84f795ae91e03d84b0fe2d863d91e0e1fafc08ddc80b33cbf607"
    "uk"
  end
  language "zh-TW" do
    sha256 "f34e77579f202fa90d96c402353f050b1596c5dafd7c4092b206696f9c06c77a"
    "zh-TW"
  end
  language "zh" do
    sha256 "b991ca121e2cc50b2d5ef77381fbfd01da3f82f86d3bd3fde61550dee2ac7d2e"
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
