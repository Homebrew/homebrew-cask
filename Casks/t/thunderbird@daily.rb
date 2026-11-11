cask "thunderbird@daily" do
  version "162.0a1,2026-11-11-09-40-06"

  language "cs" do
    sha256 "b7bdd5df7d079ba68c5be0bd1d769c58bf80773ffcf49b9b7619b7d846231eae"
    "cs"
  end
  language "de" do
    sha256 "91c40f6aa796bd7a43db3d97f9ee4efc86818a84600b7f1869719d6074de4aa0"
    "de"
  end
  language "en-GB" do
    sha256 "c442f9fc7f1a5dd133b415e65bc16ede5fbdbf47eccac0a320ad30c97758c1ab"
    "en-GB"
  end
  language "en", default: true do
    sha256 "52be44cb6441ae326c97b21cd2867a72f03d9115feaf7b80045990af1107f7ab"
    "en-US"
  end
  language "fr" do
    sha256 "0b99e5cc4950a045a74b86b4b13262f69df5fff4b7766dc66eae5534a29a5de9"
    "fr"
  end
  language "gl" do
    sha256 "9cc27fcfc1f3eeaaefbb655eb47ad47fb360f5d36f15dec17c7c3eab489a7812"
    "gl"
  end
  language "it" do
    sha256 "86f17690a2a1ddcdbd0a59b1dc976b3ddb3134b01bb2ecdbe2a5c1f777f94387"
    "it"
  end
  language "ja" do
    sha256 "eadf20db141e060f33f96e6fdb5d3a2ef78ef94233de9272a82e44cd94358dc8"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "2efd33013b5654ff324ff43550103893c26ed39d47b7cdf3fd56b23656129b83"
    "nl"
  end
  language "pl" do
    sha256 "5b2e48c43806ae2b014c6a5436f54ee9aff5426b711a3f1e1ead1b5b0178a8d0"
    "pl"
  end
  language "pt" do
    sha256 "6c84b7b800237a792b3d8c374bb820bb8a6b5a7f0d85b57bcf9dc29fcc05141d"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "ec0f5d22ef81803af139821fbfd5cbd0f15cf355be86a01b02501e1a3f3fb499"
    "pt-BR"
  end
  language "ru" do
    sha256 "e53f15d1a273f514a031ae5d9d5f71304f51b1a7cb99744e6296361dc9178bc7"
    "ru"
  end
  language "uk" do
    sha256 "bd83f379c1949b65e0ffa23189beac2f4205e52ab0479d2452273074924bfa35"
    "uk"
  end
  language "zh-TW" do
    sha256 "faa5b3d5ad761e7f9dde9b20f415f4f47675f047a7d23308d5185ebb5b5d6d19"
    "zh-TW"
  end
  language "zh" do
    sha256 "ccd54ebf3daaf1e258715985f600ae082f0b79fbb3d4909baf902536229fd99a"
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
