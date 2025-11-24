cask "thunderbird@daily" do
  version "147.0a1,2025-11-24-10-28-28"

  language "cs" do
    sha256 "51ce0ca2ebeed0b7e5048d313ade2c4700beadae5bf4bf24e008767a16860338"
    "cs"
  end
  language "de" do
    sha256 "82609c3fcaaf7a9feeec78bf1a909a4db6f8ce0585ae8a37746bbc24196acfc7"
    "de"
  end
  language "en-GB" do
    sha256 "56186625c5670f5d076217babfc1c130ee3b49cccdac397c49f38cd67861f707"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9e9bfd0785f715ae521badd1777c916cca15f052c535c16b483e0ec2f91f3111"
    "en-US"
  end
  language "fr" do
    sha256 "1e36a57e106b19bd1e6528658e2d2d4678f27ada135cefc8f5adfcc142194f39"
    "fr"
  end
  language "gl" do
    sha256 "4b62183daaab43ce4b59d99a54a09c1d3f81e8bbf7a3afb92c3b18f18e552d5f"
    "gl"
  end
  language "it" do
    sha256 "7070d9725fb143500c088b2ce3bc1bd987ee9a0559e2cbe398f049ff642d4098"
    "it"
  end
  language "ja" do
    sha256 "58284b9852d8e7d489a82e984af68c6b41c3594871d98f1871bd8792c7f2b9c9"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "742fefb064a2733a057d39ebe5584f29b3fdd18c1e7205482d7723201f74c929"
    "nl"
  end
  language "pl" do
    sha256 "c67d2e976e1b1c5349a2876aae7db03a00f69cca062aac9ec71bae017e5fab13"
    "pl"
  end
  language "pt" do
    sha256 "063dc91ee89bf7daad6784b23607632b85e062e8890aa157a4562439d8bcb545"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "3909fcd0c5f4c0b0b06bb596e500c26311e5fb2e76721f0d2194bd7bef06f18b"
    "pt-BR"
  end
  language "ru" do
    sha256 "d93db17439ae0bba35fd20bbbcc9517bb8e391e3663ca060ec5897df272d7e4c"
    "ru"
  end
  language "uk" do
    sha256 "a144ead5894744c8d75e7e709285d30a620d4eb7b24b3f6b5c2c6152665a7cbf"
    "uk"
  end
  language "zh-TW" do
    sha256 "ed99b08a9aefc0003188ccf1a428a2cd651c784893e437ddd708f28b87c38527"
    "zh-TW"
  end
  language "zh" do
    sha256 "9b182e4b97145885935acb47c1c1301caa44c2a957ab5a2f93767e28ec44df20"
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
