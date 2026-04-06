cask "thunderbird@daily" do
  version "151.0a1,2026-04-06-09-22-35"

  language "cs" do
    sha256 "c85505c91cffa53e83ace576db846d532811c03f3e132aa065c7b3d1799679d7"
    "cs"
  end
  language "de" do
    sha256 "a30e24e226752bac749735d8756452422771728e048139d671aa8a738ebf5528"
    "de"
  end
  language "en-GB" do
    sha256 "c3d474c8265cc2654826002b91a3405521f9a9d05d2d41377bc0d12821142496"
    "en-GB"
  end
  language "en", default: true do
    sha256 "19f2851db8d6a16b5d3e3f60853bd2da7b1b294b6f2ed1928d69625ca95ac2b3"
    "en-US"
  end
  language "fr" do
    sha256 "80ac8ab932ad3be60c08e4b52624600a588465f191df93e4de96e28840886eda"
    "fr"
  end
  language "gl" do
    sha256 "fc47fac629ea2f346742f810a4da7fffbbf26820d156b4851245b0358eba3432"
    "gl"
  end
  language "it" do
    sha256 "17dd59046eed1dd82e96e422c5ef490c8583822098522431e63c28e38a006be2"
    "it"
  end
  language "ja" do
    sha256 "7cc7b0e886f9f3f84ada80a2366c861f6c15670ce6fad091aca61e3836740ddf"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "d2825657b51ec7f02a45394cf19e061979c504e8612253c6185f3888c3b27262"
    "nl"
  end
  language "pl" do
    sha256 "98103652bb8e9906f711b57d85d2ae961884ae959f97c490d64634e82f810c0f"
    "pl"
  end
  language "pt" do
    sha256 "0ad4344aaa02c114b3a7ae540289ced50b6bf0a1ee63676fec696c069fdc3cd4"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "a7c2f7738c3cf0decd8c7688983dac4811a5aa2de364316c1811ee40ed05b11a"
    "pt-BR"
  end
  language "ru" do
    sha256 "2fe53371b227e2d9a83a3bcb76320752e78a691299135c628ba1c5a309295224"
    "ru"
  end
  language "uk" do
    sha256 "9b58760ec508883479282ac26065597b6855dcc9b490a6e71e9f327754a0342a"
    "uk"
  end
  language "zh-TW" do
    sha256 "20cad807477903ed077062e0cc0092f267b93990e7b8af6967e1d22a01718847"
    "zh-TW"
  end
  language "zh" do
    sha256 "ccd828a0069ddfc8680ccd8e2fea912cc6a88abebafe4f4281d401e667c4c97d"
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
