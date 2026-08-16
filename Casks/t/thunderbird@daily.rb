cask "thunderbird@daily" do
  version "156.0a1,2026-08-16-09-48-00"

  language "cs" do
    sha256 "8e8c5ae9019affa66156420a1fcde45fe7cdb43a84915761aadbad722c8c5f96"
    "cs"
  end
  language "de" do
    sha256 "095cfebcd908dacc11904c29c5ccc7b073d1f1619d155df511b0928e6076a0ec"
    "de"
  end
  language "en-GB" do
    sha256 "c9127bd27fa26fe476357eff9c48fa5e449e140be4292315981be92965575c39"
    "en-GB"
  end
  language "en", default: true do
    sha256 "971783aa8bd8e940b7c5e5895215f90704ce5369cf96a6f348d96f6aa02a3d5c"
    "en-US"
  end
  language "fr" do
    sha256 "ce655dba8152d0eef19b61df75fd0436a6b1ea4ba9f5f34a8c2b50dc1a1c0008"
    "fr"
  end
  language "gl" do
    sha256 "f9dd175026e1806fee1047c34254c044642b8b21a5a8ac3b577ec0ae34219906"
    "gl"
  end
  language "it" do
    sha256 "42e7b878e1468132b1d9d3c8822d13496102428a258df8183658c07ebeca2436"
    "it"
  end
  language "ja" do
    sha256 "8e734a9588d70fd6180764dcba7d5f0722eb5adfbad419604ec8078c0c8301b2"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "8c50deeff98ffbbbce669545b43a93361926d1d6759eb6c16e0bf8eeeec0c60c"
    "nl"
  end
  language "pl" do
    sha256 "d2ef96c0c222d177e7b9da5702ee64bfc355fa7b12176c3d2fbe2b90401e1476"
    "pl"
  end
  language "pt" do
    sha256 "0738ae8dc060979370fb43b0ace6e0125139ae955ecc07a8a24bdd47d4e1ccc5"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "ea81f87bf3409a4d09b4c204e1a81a836edc58852913472d90aed10d081be565"
    "pt-BR"
  end
  language "ru" do
    sha256 "763b9b3095acb42d634d3f9e82fc09535db28095e00ec14e5d2de556f89df2af"
    "ru"
  end
  language "uk" do
    sha256 "cdaae37d09b1a025a881c0045b98df7be43e8fdd4cf845e4b7c46b313d838402"
    "uk"
  end
  language "zh-TW" do
    sha256 "5bc4c8cad1a7b833a69befeb610db2b69ddcf887fb4bdf06d5797a6f45964396"
    "zh-TW"
  end
  language "zh" do
    sha256 "2eeb563f606b0c2809ef85b8fba9ba1f5a3c575d0e2ac445d1d31c1fe2995cc6"
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
