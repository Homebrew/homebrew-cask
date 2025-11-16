cask "thunderbird@daily" do
  version "147.0a1,2025-11-16-10-16-09"

  language "cs" do
    sha256 "4623799918934b5a64dd0d049b0c8d466def50d72b47e4d01006a7db8963eae2"
    "cs"
  end
  language "de" do
    sha256 "2fa85520a97906396e68b5b31f3491f4ce47267f1fe268a52177156452b1137b"
    "de"
  end
  language "en-GB" do
    sha256 "d2015b2e148d2bbfb75256f4a0b189c954e67bab6a7cea0a5608a81a741ce515"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8f59ee64d5241c783a8f610fdca40dd19201ce92e1364a2a5b89b438711815f0"
    "en-US"
  end
  language "fr" do
    sha256 "445dd5b10f0c384b7d3e7676e61b391bda9b91c0412fd5ca4f0bfb5e9138ff47"
    "fr"
  end
  language "gl" do
    sha256 "77834a2242dffa546b859a555f474a231de71a790d6d623b29b077a1c728ee26"
    "gl"
  end
  language "it" do
    sha256 "84dc687b1629f7ecc4957c04956750b0688f88eaa0f97d6611682f8fac6ef031"
    "it"
  end
  language "ja" do
    sha256 "610041c4854ec55ef488e296bdfe7f7dddc05cde867953b7ecb2b7c37ffe72f1"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "8a2e4f25e085130ab8a4e092799d277b35c452acabdbe87f2f824f0e5b941bdf"
    "nl"
  end
  language "pl" do
    sha256 "b7b950363145ce8d3ad16959c5a1481c8dbc484d6b795ee81813f7f866d4d122"
    "pl"
  end
  language "pt" do
    sha256 "7030cf4819b5fc26cfbdb98c78709c400f346c170242580153231d6ac314cdd4"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "ae61ddff76fb248c8cc1355d6c88a90277913a7d56dd8cd2e232ecb7324f6890"
    "pt-BR"
  end
  language "ru" do
    sha256 "3f53e435ce8bbd5535c2753882b4d429a4383f966859b9543e6fc1253d1a7984"
    "ru"
  end
  language "uk" do
    sha256 "deaa79d937d596c1017401f4ca4f2b5ac96a0509a57435b9f708f2f7e36c998e"
    "uk"
  end
  language "zh-TW" do
    sha256 "2f328b4d906570ad9ee5870205c80340dc65e7bb5c18cad09f6b86762b023e9a"
    "zh-TW"
  end
  language "zh" do
    sha256 "460571339ca677d72bdf6b5134177308529e270925dcdbfdaf58af1e6dc933df"
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
