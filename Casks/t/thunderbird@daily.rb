cask "thunderbird@daily" do
  version "146.0a1,2025-10-21-09-59-38"

  language "cs" do
    sha256 "f1fe0e9ee8905fdedb9c1e0906f2463b3a05f6dced89bf96b16649acb574a049"
    "cs"
  end
  language "de" do
    sha256 "9a68c90ec103aa981d6905d921a4caa52f0f69ba09098b616fcb0bcce9bd0aab"
    "de"
  end
  language "en-GB" do
    sha256 "265fb9e69de9bd819abc42b60df73c1f6b508fab000d8dfbd6c76973b234b0a3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f3fc326cbaa76312220c821491639d6d3c9c0177866d461d96486d8f01990d7f"
    "en-US"
  end
  language "fr" do
    sha256 "e1a1be14924955b7cfd4e831359529a3d186fba99a15347b32372ea06483a285"
    "fr"
  end
  language "gl" do
    sha256 "d0075c4c503107ea3f4730853cb425b48714e5b52f10c16456eac7cd3c4ebc61"
    "gl"
  end
  language "it" do
    sha256 "234e80091496bd0853934648caab3f7b887630313248b52c40fbba48b294ee05"
    "it"
  end
  language "ja" do
    sha256 "14a7da32469d7929ecb80119bc3d74ac92192c84f1582bf0352896d2a1fa4c55"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "60c910eeedaf35e63f24673e72a3083bbcdeb90c8600064ba1b24c1c514a41cb"
    "nl"
  end
  language "pl" do
    sha256 "64f32bafe967c4942561d742b8a62a2edd704a5d6fd9582a6123ebb498d6cbeb"
    "pl"
  end
  language "pt" do
    sha256 "7efb04e3ebcbec0af1f9997e40845c5216650b9159c040bfba8c284518ee9778"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "805839bcf1985379187c8b2ba40316009dc9da13af0152bfacfa7941b052841b"
    "pt-BR"
  end
  language "ru" do
    sha256 "4bc34febd02587197e1c0ccee4a92e19264432520e02bd29ff289f57b02d6485"
    "ru"
  end
  language "uk" do
    sha256 "4fa6f4299d6fd1f80a0d80f7fa94bcc3c4fbb391dba976695d8140e398148c06"
    "uk"
  end
  language "zh-TW" do
    sha256 "301c136f9e45531a719927f2caae31522ee26511e0eee87e7a7f6c6e5083443b"
    "zh-TW"
  end
  language "zh" do
    sha256 "ffc567d708847da94f93a915139acc3e182e19705db455c0bc2b163b398b07c9"
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
