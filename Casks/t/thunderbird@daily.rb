cask "thunderbird@daily" do
  version "148.0a1,2025-12-27-10-34-01"

  language "cs" do
    sha256 "69a4ed9a121bc5a039473a7aafec906d0244737c0a938e6b1460fd09e183f18e"
    "cs"
  end
  language "de" do
    sha256 "4b982f717a4f60bd93382cfe49911c249d0c3d9f0b47c23014b03d5e9d3caaf7"
    "de"
  end
  language "en-GB" do
    sha256 "1aeaf94b3008c935c82072466c7dd3e98bbcf9aad2e777eca018c8b1011b7d4d"
    "en-GB"
  end
  language "en", default: true do
    sha256 "29e8e609d9392727126bf3b2d5d9b376416befad51b67ada2a6bebae4a654397"
    "en-US"
  end
  language "fr" do
    sha256 "0d1779f68b674b4f161bc16e451381c61091e72bf55739d2d06e479c82fc9471"
    "fr"
  end
  language "gl" do
    sha256 "fd8e89c7eb686ee3ee22a5566fd01e5eb50f3c83003ba6bbf8598e1f6e61c763"
    "gl"
  end
  language "it" do
    sha256 "38de5d1d5836e44fa8e132a4e9af0220b8c0626133688adccedabe57b6e50f3a"
    "it"
  end
  language "ja" do
    sha256 "0f0a888194a9b8027bc553ae8f45bb4b1ed0a6e650e92029ae68c3bd5fbc5518"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "25d23c78b643359e52e026533feadb6d7995863bae3497914cfad450e9b6aba9"
    "nl"
  end
  language "pl" do
    sha256 "e88a9697d07ecd06934fc20d257d76df420e331dfdb13e3f84886bc6cf100eeb"
    "pl"
  end
  language "pt" do
    sha256 "0dd8af818ad6ca2d443da99978dd85c76f47badb430ce68ed82a7c3732d7774e"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "7644c5dfb835adfac3b5bad3166f6bdb0c398eb8e0d2f0af830c6633615bcb2c"
    "pt-BR"
  end
  language "ru" do
    sha256 "4b8c0c217ed64aca4eba8507087428288c61a8fbc00e871a0841652a7dd024bf"
    "ru"
  end
  language "uk" do
    sha256 "c9e280b8780ce86f50c19139056b8e6190c12e08c8bf2b2ace107f9a2bfc9c84"
    "uk"
  end
  language "zh-TW" do
    sha256 "00acb1482dbf43dd96fa69420b7e35f83674c2fa4bc9de3b3bcdaa727e7022f6"
    "zh-TW"
  end
  language "zh" do
    sha256 "54993a0abd3f8830fc0494018458d41b282bcfb0684a0d980fadc62ec8c48f7d"
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
