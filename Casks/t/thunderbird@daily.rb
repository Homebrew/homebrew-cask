cask "thunderbird@daily" do
  version "152.0a1,2026-05-13-10-12-54"

  language "cs" do
    sha256 "674f87d39aec0428dd52657ce30378628a1622325540d20212ddff9f3c6ffef6"
    "cs"
  end
  language "de" do
    sha256 "90a9e1b34041cb40069e2ae7612255579756ca3ff7d61eb63e38337d620f18bf"
    "de"
  end
  language "en-GB" do
    sha256 "a346afc7a8440d6e73cbdc0b127fe611e5716fb31d464d55d6d582cb50b731c7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "cde124b9817e07aa2b1f4c6521e4255542842ef2953ded48677bad3a1e9d342d"
    "en-US"
  end
  language "fr" do
    sha256 "f3c6098b44f2c2875503c1f4a81c229f4b109d1a2bba236464664ce425be6961"
    "fr"
  end
  language "gl" do
    sha256 "d665effdc1c83f7ba92186dc3b027c9fcad3c9476fb3b0ee41b48af7eed8afe5"
    "gl"
  end
  language "it" do
    sha256 "ea44336e3eba3379496b7029538e2e72760237feeb85495d735afe361065bcaf"
    "it"
  end
  language "ja" do
    sha256 "9340ed9d5fbca1d646b1659105529fff6dffdb61275e94e0edd8f359a4a553b6"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "86ba8a6127b529393f7f2d81fd6440f683bf1e92eaf2607bdba1060196da65a4"
    "nl"
  end
  language "pl" do
    sha256 "bff7804fde9039a551cb53d953f7b76f362c6bc79fd740b1747b27c45007528d"
    "pl"
  end
  language "pt" do
    sha256 "4f48af114fede6abea3b3342c4887d1fa8017127ea656a9596e83f491513f8ca"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "f34a43cb297727eee57b054e17afd77c05907dcc40f7939fd54961dfbf6bf370"
    "pt-BR"
  end
  language "ru" do
    sha256 "6fdfd12cf53fbed7ee78a10748bc5741d04192e28bd2481a9c3b33a5da4fa819"
    "ru"
  end
  language "uk" do
    sha256 "0024cdaa7bd62b3d5833d39bae4ecd3518402589c0655c28aa8e6062ef16a3b7"
    "uk"
  end
  language "zh-TW" do
    sha256 "5f11181bcc56ae1801fb2faa04c027ea53cf31928ade7b93edc178de440281c4"
    "zh-TW"
  end
  language "zh" do
    sha256 "fa6cc7d06577bdc26089fd12727ded0663e0b506d4319b93e161138a41397c36"
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
  depends_on :macos

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
