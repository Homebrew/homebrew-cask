cask "thunderbird@daily" do
  version "154.0a1,2026-06-21-06-50-15"

  language "cs" do
    sha256 "26adba8d46991ccb7bc2395aa5f66e372058ce4cdb74d6213ed36ef9d317928a"
    "cs"
  end
  language "de" do
    sha256 "f761c7e017ae890c663c9c9a421286ec35201ee865ee8833fbeee671e1e4f356"
    "de"
  end
  language "en-GB" do
    sha256 "ad3993867decb0e3c9ff18be69ca619c32367e7aa36f8c723167cb3c6308fdd9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "977808c5e63c4a6065bf26ac7dc8cf1338e88adb696ea337798944499889b7cf"
    "en-US"
  end
  language "fr" do
    sha256 "65e755f4b9e76b857fb1db697e31392fbf4a839b20472f1d6ec78d44ba2a4ddf"
    "fr"
  end
  language "gl" do
    sha256 "f440f219e4d1519199077f7653b4b3fca2977dad8dbeed536ecf98e11c427642"
    "gl"
  end
  language "it" do
    sha256 "70d81680528786ebce20066a99b17f4c3fb8391f3efbd929fb54c5c2ebaee809"
    "it"
  end
  language "ja" do
    sha256 "69a5bffbb48bdfcf3f76e0dbe108687de344270b8315bb447cdf78ab39c005b9"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c7bf53c556c09e03acf20bdcba11b00904dfbeb16030ec232c2cd1da0620d1d4"
    "nl"
  end
  language "pl" do
    sha256 "53a228f4d79b91548c238814fea8cfd24b84abc2a5a82a1cc1abb74d2062aef2"
    "pl"
  end
  language "pt" do
    sha256 "536b098d64cfc52115e453ac8510bdd201827d456555e75155caa683f0dc809b"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "e72ca0e6df01a198fd63bea0b87db01f9f8c06a574c55024e843f09a83c63fb4"
    "pt-BR"
  end
  language "ru" do
    sha256 "6b9b7a7d93aa83bc60f65cd4629cae8a7c89a1697edc3e04bd366d36b98dbb31"
    "ru"
  end
  language "uk" do
    sha256 "3fa69afda6f1c0312dedf6592ab563075b0c9cd646afa18868033c9625db0831"
    "uk"
  end
  language "zh-TW" do
    sha256 "a0c3e6f44912e9049b6cdb17205aad3eee9a2fb4c17d033caccd4324fb2b31d4"
    "zh-TW"
  end
  language "zh" do
    sha256 "90b2483ae76e6625572027015eab1c218ca1a3e740ebbaff674841d744f928e8"
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
