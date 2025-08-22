cask "thunderbird@daily" do
  version "144.0a1,2025-08-22-10-58-03"

  language "cs" do
    sha256 "7530f15f47d86998771384da03761487d8fac53b854862996a5ce1f4d5b32849"
    "cs"
  end
  language "de" do
    sha256 "9c0b9cb6f6a1e274f70db4227850964c23fb5a775ac08d8abb16d48fb38851fb"
    "de"
  end
  language "en-GB" do
    sha256 "473bb0850be4a95ed2f9f6b400761ea871b5122447ae48e5fe2f2d9e60bacabf"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8667d3bb9b9eb132e39d7ef199f65007a9d1cd166e827d8175fd68a4a09e5b04"
    "en-US"
  end
  language "fr" do
    sha256 "9a2cb1f7e0ed0ffb7a064bc1596a29b36dd1f69286d65dd378efdf09c8e60af8"
    "fr"
  end
  language "gl" do
    sha256 "934a2d70efed8c0439333731f1bd741188a758519a1b955c7d683e305ac40513"
    "gl"
  end
  language "it" do
    sha256 "6aa10ea2bd78e2b793f4a3e99545f3b5c9cdd8025d52a6954ab4b740392c2b01"
    "it"
  end
  language "ja" do
    sha256 "6de156b1b2df469f14eca9a5dbd504fb371392c4b02480f5260ec31e41f5a3d3"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "61dab2fdf22f74f15b7b73c46b506b16c4b8eaa23ed300daf90f1dbd870fd1a0"
    "nl"
  end
  language "pl" do
    sha256 "ccac50c36758f6d573aaf329183eead5ed2cdec9cb3a1dba0c8f49fb88ccd796"
    "pl"
  end
  language "pt" do
    sha256 "2e42f67f5b42aa340496796c38265173e09be48020d32655d1bd95ac6aa00d7e"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "b6186cf75cb2eef4a1e7f6bd0142e0f58de61698dde6f71a7d1081903e0e8dcf"
    "pt-BR"
  end
  language "ru" do
    sha256 "a10cd40fc900b8e21266ef4396d8edbcb2cb6d95b9837882dc34569dce2c2f4b"
    "ru"
  end
  language "uk" do
    sha256 "b0c942c5b8093b865cac29e3fda55d7d5129d7900b8e3b589e3a963da9cf710a"
    "uk"
  end
  language "zh-TW" do
    sha256 "91a1940a31009a52b47f92dd90791cb402d1532f905df3814dab76ff781b54a9"
    "zh-TW"
  end
  language "zh" do
    sha256 "408b826eb18d392b6b966226746b2c36478b43300c07ee6cf5673e2876b2153a"
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
