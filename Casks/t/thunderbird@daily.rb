cask "thunderbird@daily" do
  version "155.0a1,2026-07-31-09-16-27"

  language "cs" do
    sha256 "3894296096bfe064eafab806fc21bc46e324637f167e9d9d932600074100ab5f"
    "cs"
  end
  language "de" do
    sha256 "9add024bb40630e91e6012e1ee86fbcdfae1f691ddef496e9c41d38b5c4fe7f8"
    "de"
  end
  language "en-GB" do
    sha256 "97e0c2bc29ee5d2415bd1e8015c9b3ded1df70f6583bdd298170cfb61edd49d7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ba638d93e364a694c9a0760efb0988ba2205942d93b246067db7701462713f8b"
    "en-US"
  end
  language "fr" do
    sha256 "1392b324bdcf7c9d7ad7d1ba66735899490fe1bdb95c1cd5a1bd96132be434f9"
    "fr"
  end
  language "gl" do
    sha256 "cf9d3817b150734a72973a3218b4145e89b2b8749c332effbfe27504231979d9"
    "gl"
  end
  language "it" do
    sha256 "8321d8852f9f13ec9ad3f529297898510d87dbfa27a8775e6b7367963bef8121"
    "it"
  end
  language "ja" do
    sha256 "45c4ecde252e7e5447a3f0942b5f95de314eff6177ac9e8d7ad87273f5631d6d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "f76db4330ca3c580cc3dbf7035665db80c81a18f18272cf8379aecfd67070df5"
    "nl"
  end
  language "pl" do
    sha256 "7d9ab1d27c55b319b6f87717b10ec30d05c27d96a3a970885050ec833662671d"
    "pl"
  end
  language "pt" do
    sha256 "1e2ac07e3a9fdd1d78f5510cbddff27bf9cb587db5aaed4e1f2bb30f71223a34"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "68534d75710cf035aa68365d27cf24ce29a5331fa151e5456f221f75e769aeeb"
    "pt-BR"
  end
  language "ru" do
    sha256 "345f898c32a30c9ddfc8e2b4b62ee4a180d4cc957fa9f127c44098eeb3d1907c"
    "ru"
  end
  language "uk" do
    sha256 "549afe522e018e7ddd789ca5db9ac995a19a066df92109861fc3f94e24ac10cd"
    "uk"
  end
  language "zh-TW" do
    sha256 "e659a680f9478692cea7f648b1c245f056f9a122914ec4f1cba47f8c356c2e1b"
    "zh-TW"
  end
  language "zh" do
    sha256 "bcfbe4587728171ddb54ac460529b55bc87fb446e6d654586a92c675db89616a"
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
