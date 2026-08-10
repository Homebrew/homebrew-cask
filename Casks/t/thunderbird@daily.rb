cask "thunderbird@daily" do
  version "155.0a1,2026-08-10-09-50-02"

  language "cs" do
    sha256 "f1c24525e5d077e90386d4f121af58b6c6ebf64b696afd42d8da9de63b49b1e6"
    "cs"
  end
  language "de" do
    sha256 "3019e7ef5814b9bcc33d4583a50d31a54ef0d34db3b75138c7440653c57421af"
    "de"
  end
  language "en-GB" do
    sha256 "5957b136c5f150d1b3949a8ea4d0f4729a1ee455a9ccb960693a0c4c7cb49f4a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "778d6022ce1420cd5db7cef41db882b235895c351545130eea17bcfb33e90c0c"
    "en-US"
  end
  language "fr" do
    sha256 "0785367c366e28c482d2eacbeb4e58e04ea80d429f5f59d69f3d97d493fc9771"
    "fr"
  end
  language "gl" do
    sha256 "1b195b938a506c11f7adbe166ba39f540524501f2cc530333cff0e2bcb6efaa0"
    "gl"
  end
  language "it" do
    sha256 "c475cd8d19c907613a19b6635dbf99014dd80f73ed26c18c3fadf2f167a9de26"
    "it"
  end
  language "ja" do
    sha256 "23ff8aee6edb6b46596976230e6a7f6d98cccb7db9d7b1d1e2bc839f8e7c0889"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c2ecf948a52eebbfa7606b32d467eefc198196f45e0e894af8c63e286ac01f3c"
    "nl"
  end
  language "pl" do
    sha256 "b3419a29f1e1735ba45e423563f8d578e4a1c792c20a266411aa59784121440d"
    "pl"
  end
  language "pt" do
    sha256 "57d2fc2b3c4f8933f70b7672fbfa1c5323c2cb5687fc0d78cf8f262384932355"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "a37605db7e5db4a20fa173d9c1949256316fe6d85bc171c63120bad09c374fc9"
    "pt-BR"
  end
  language "ru" do
    sha256 "201d7ac5638341a975fea21c92741bcf1bd75ea78269b82a2968b73271bf6059"
    "ru"
  end
  language "uk" do
    sha256 "38d8c732dd652486f194463309392c5ef9811b04579dd1c4f3540640cd3d4d49"
    "uk"
  end
  language "zh-TW" do
    sha256 "3caaf02eaa258c0025caff29afebade93f06d726ae9dd7add834d3f746c5dd72"
    "zh-TW"
  end
  language "zh" do
    sha256 "a2b63f104e3f30f4969582cbda2db17d015f8654cf6a8ff85c5e4f0ebe15fd93"
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
