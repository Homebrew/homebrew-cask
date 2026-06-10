cask "thunderbird@daily" do
  version "153.0a1,2026-06-10-10-40-00"

  language "cs" do
    sha256 "403e158f773714edc3666416ef5b1bdb031b89d4d4d16e38c94483dd1ead4e05"
    "cs"
  end
  language "de" do
    sha256 "f3574480500c800e4b7237ecd76898b2d9718b411b2d2288a48067315e921f00"
    "de"
  end
  language "en-GB" do
    sha256 "40cb272aec37be3c217883264bb50e0b5e1fea7fb9ad9da8614e96f864e4ae87"
    "en-GB"
  end
  language "en", default: true do
    sha256 "cfec78b7d46589d9ff9ba9e0fceeeec786240a5eebdf82fd9299162d95f11b61"
    "en-US"
  end
  language "fr" do
    sha256 "0bcca13eccb6a949c3254ae42a86115ccb1bdc4c6e188e688042d3e00cb4bf8d"
    "fr"
  end
  language "gl" do
    sha256 "e36674dcdfca073c988f2951706da7657b2995f24194b464f0a79080ec423afc"
    "gl"
  end
  language "it" do
    sha256 "9380a5d4147ca5dd7529518bde6c646a82f086734483e3973dc85c9202d66b8d"
    "it"
  end
  language "ja" do
    sha256 "9e5d5e034d350c4a332163df0ec143abc6136fc2ce5aa86189d1b25ff4584350"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "dbd8bd1120d0492cbc97bd37e214969ecbdd30ac5320784c93d7b103a700eb6b"
    "nl"
  end
  language "pl" do
    sha256 "c9034e5e4c4e0c090aa1b67e0c17e5afc8e0e38ebf7e6bd2bc146e312639f1b3"
    "pl"
  end
  language "pt" do
    sha256 "5650744970684b2c40c393f8139647a2594c37160b529a3e97ce37c07750988c"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "2701bd3371a2a8f67a3ef29564ffa31cc21d6a644c8e54f65a520c608ec53740"
    "pt-BR"
  end
  language "ru" do
    sha256 "ac25ba48094ceb87aea4a7ed5a8fd6312c2f8065e3ff8c65d7f30f9a576d750d"
    "ru"
  end
  language "uk" do
    sha256 "1bd388131a750553672dbd50e258e5026b6380015429f92e11ca3f80e8318497"
    "uk"
  end
  language "zh-TW" do
    sha256 "ec0e6b81bfd7e2e0531bac80bcdcfa828a8485f0b5434985e2734fa8286bc662"
    "zh-TW"
  end
  language "zh" do
    sha256 "f8f855c6c8067bfb7221bd07da5eb5c0b182aa51179b12741c51149816db17a0"
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
