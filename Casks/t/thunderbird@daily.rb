cask "thunderbird@daily" do
  version "143.0a1,2025-08-02-18-53-05"

  language "cs" do
    sha256 "68ef3f0a8ccf1727dbb71d23149f7d4c635ce2523db899ddd047d7f5a6760de2"
    "cs"
  end
  language "de" do
    sha256 "564f090a838c9198cc9a13f9d03203848bd0bd267a405247b3c73cec18273939"
    "de"
  end
  language "en-GB" do
    sha256 "5dd904e61b38ddec5d73d50f6940a373842047a332da5a0c6c8cd33d34d64dca"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a11a68f5828f90a1283dd7eb8ec0f0d99eea9d15f442e98b4362d6af42a1fc52"
    "en-US"
  end
  language "fr" do
    sha256 "8fe2df302d649865a15ac9366298adfead3fbf33e56e078773fddf8a91e128db"
    "fr"
  end
  language "gl" do
    sha256 "dec863d60b374750ff310c74d0e482fdd212f35e75fc19037604fd8938de6077"
    "gl"
  end
  language "it" do
    sha256 "6dd772a62a096c3c0d41692499e60b675de5f505847826df0d6e16e8c1e924f5"
    "it"
  end
  language "ja" do
    sha256 "2f7a0553702ad9f213975d1d5ea81e5ae07e72af59c7a26969d69f18464eb337"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4f06cbb495754cb1139c8057ac7d95acddc6d509b1e811ea1c2587e7439359e3"
    "nl"
  end
  language "pl" do
    sha256 "d5255be899ef9e93842c863c3d12923561544ac9297480163b233ab60f8200f8"
    "pl"
  end
  language "pt" do
    sha256 "98e9a062e8a5263ab20b410eef0d0b71cfd7dfd6dba3a197a7155e0db96ec14d"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "ac612951b308a701cb078f44d1357a29d2dc5af419c28ee99e0dc1daa40c5615"
    "pt-BR"
  end
  language "ru" do
    sha256 "53fca3ab6c9212816fb96d06cb952b73bcc5de6d50e21c9d933c626dba14b1e4"
    "ru"
  end
  language "uk" do
    sha256 "a5609ee0b05ca99b19c6eaf30e40cb39bbd485f1ded39ffe79684f16d12a317f"
    "uk"
  end
  language "zh-TW" do
    sha256 "26fdc4d006d2a0bb04b2c51472eb7b9db18cc2505fe0abe6fc1bc6947e916872"
    "zh-TW"
  end
  language "zh" do
    sha256 "50983f52483dc955b1b1c76a110a299dbabf53c6ba3583e2cd6dc11097aba4d5"
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
