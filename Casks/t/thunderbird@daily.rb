cask "thunderbird@daily" do
  version "162.0a1,2026-11-07-10-20-03"

  language "cs" do
    sha256 "6361e297550667d76869a06aa07500e2add1b022847b482647bc46ae57b88e20"
    "cs"
  end
  language "de" do
    sha256 "a94c32fe0a0b914f60dccd8ac51b9c7aa8c27a6e1a41661fd1ff40820f3e6b87"
    "de"
  end
  language "en-GB" do
    sha256 "131d8f2332392cabf4d248e8955e6afac2015a048f7723c5a2602d5923fe577c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "75c4e44225c857f2f501aa0bc952a49582e2742e7cece2c2082912dc89e7ecd1"
    "en-US"
  end
  language "fr" do
    sha256 "625291ae741b894ca38cc10439b67603fa283bd18977e908b140381fd70836b4"
    "fr"
  end
  language "gl" do
    sha256 "7290158383f9b327c31116976b27e321c1985b74c4cd9311b87c6892b6a67ad2"
    "gl"
  end
  language "it" do
    sha256 "7efd2cabbd4bdb4a88c5528f7accd664ef2349b032a0e6d934d7c11d1067e8a8"
    "it"
  end
  language "ja" do
    sha256 "fea44e82ac7739e2cebdfb54c2adf831236725ac616b4cc82e1fdddd00d65677"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "47222a5bde359b87e9e3d57091d72df495c69066bf63d6b591c011951590df25"
    "nl"
  end
  language "pl" do
    sha256 "17d2cdd68c4336d10fbee3424aa97a642c778e879c664f39976cc2338d454a0c"
    "pl"
  end
  language "pt" do
    sha256 "b540cb490edc2c0f7d1ac0288c52e744a319ec44779b8244a386cd5b93b1e5a1"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "9d3eae84d4595eda6c0bec016b4e576bdda4c82aa54c2f51c2b5364420e5ee2b"
    "pt-BR"
  end
  language "ru" do
    sha256 "739c4e26896735ba3f086b89946a6741f121a454774662045fe5b36e990ccfbd"
    "ru"
  end
  language "uk" do
    sha256 "6b695278a064b043560112cf50401d5cfe6c9292d2d00242dd8bd63c5cdbcbec"
    "uk"
  end
  language "zh-TW" do
    sha256 "71b8cd6929843677aa0fda36405632d998a181769a1d65d41b86449214b84581"
    "zh-TW"
  end
  language "zh" do
    sha256 "4112f0d0083e5737c1fb70be23afbfa0b00435d0150312e4a26a7a9b6dd75ee2"
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
