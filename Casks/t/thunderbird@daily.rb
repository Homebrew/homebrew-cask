cask "thunderbird@daily" do
  version "155.0a1,2026-08-09-10-10-27"

  language "cs" do
    sha256 "cb065f73f02f9f328ca9b8f1c03d191329308541478b57132abee6b5b2d16fc5"
    "cs"
  end
  language "de" do
    sha256 "8a29bf14009b2fadb1e3c574e6c5dfcfe30f1a6809f27e176c8a83cd68fcf746"
    "de"
  end
  language "en-GB" do
    sha256 "3166a4471ae04d759a2491e01f36c01b0e1a31cdc6bdf562802f81e993092b8c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "591fb8053a1e3c129bf8c4a24c0a8c21dcbabb51e82c775547b001147e731093"
    "en-US"
  end
  language "fr" do
    sha256 "be2697a6aad3ae1a831ac2733b45f220072c60494bd936792e1c9cdbb2fc8fb1"
    "fr"
  end
  language "gl" do
    sha256 "f3fb5772d68cca516c60863ad6497f1d3c530b9525f41a4f59444c77451c6d1d"
    "gl"
  end
  language "it" do
    sha256 "33be824ce4b1b322351f5cb907162f629c01bbea67ac3ca53aec288b541d7d9d"
    "it"
  end
  language "ja" do
    sha256 "2679121b2668e5c150e3d9353b9919e55a974e3771ba184fbac86579efab5f28"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "fee0f94b905d3fa65192bdbe24978fbabbe3260bc8e5b01b1a1301f67b045dfe"
    "nl"
  end
  language "pl" do
    sha256 "c961eb576e2cd30b04ac9b7a498a2e3957cc735e1906649ca1b0dc24c894f559"
    "pl"
  end
  language "pt" do
    sha256 "dc48dc84aa14cee7a25f0a47ef894431be389d351300448fec7df7daa52f4af0"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "9c35b7bc6e1eb15884b09ffe6e0b61769160443366f5d91ad897f02d4707d7b1"
    "pt-BR"
  end
  language "ru" do
    sha256 "08cbf7770f8c4474d5d55381d7067adf327615d765225bf3d93030a307c1da81"
    "ru"
  end
  language "uk" do
    sha256 "d40d73a9a0607e87a39a12d5386b6a1e701bef863f93395d06fd689731bc2736"
    "uk"
  end
  language "zh-TW" do
    sha256 "8565978f5a105be3c23d8240e6a5504f87cc9fab57a225e3b152057a6e214aae"
    "zh-TW"
  end
  language "zh" do
    sha256 "867f05ff973452d14b4f4fdcfe2be2a6204d3743e21dbe1752ec3b9e701930af"
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
