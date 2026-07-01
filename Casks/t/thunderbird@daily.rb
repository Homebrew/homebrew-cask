cask "thunderbird@daily" do
  version "154.0a1,2026-07-01-10-05-38"

  language "cs" do
    sha256 "49091e7790cf6de2dfe374bf1b98697aa1b08e64e2f6b36d9c7c0cf823211c18"
    "cs"
  end
  language "de" do
    sha256 "90bc43812e4a21a5be264759cdd93716d9eafe24c09189c56709699860ba1888"
    "de"
  end
  language "en-GB" do
    sha256 "dac07dd133281c0ec135ff367214a7f917eb70154671590e4c186bbf9e96f9bd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a33ec12a8dfad2e14e50d0bd3eb87a9f557e48e16dacda6927c85547218e03f0"
    "en-US"
  end
  language "fr" do
    sha256 "c8a667b4f9394ddf50b010a81960d1fafa021544414227b82644091751fd8995"
    "fr"
  end
  language "gl" do
    sha256 "0b94230183409023c611df3883575764edadd478c4f46df0ce4fa2382b749165"
    "gl"
  end
  language "it" do
    sha256 "f08299319db39312ccd2c90d85f367ea75702df4e86c48ba0573025f04bed33c"
    "it"
  end
  language "ja" do
    sha256 "f43cc8bf230ba023eb15fd1cdf953747cf093ac93c8e3662abf594de8b4be59d"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e701e31c9ff1fb99aacc81b00bf24aa4aaf39315701f109d8073559ba81898f4"
    "nl"
  end
  language "pl" do
    sha256 "4462c2d99a75b95f99dec1925915e7e3cf98fed0cd731c261884ee9686a5fb29"
    "pl"
  end
  language "pt" do
    sha256 "be39267451e7bbd7d7bd4a96e6014d60640ea87efdad9efebc210690a98f9b91"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "fe474d93e61cda35582b2f6450f8566f1a5aca7c96b4eb1c22aca442f6354b96"
    "pt-BR"
  end
  language "ru" do
    sha256 "39b11762ae4628c31ca1a930d49699c55b88dedc62cd6a0b1650ffac89c4d339"
    "ru"
  end
  language "uk" do
    sha256 "a006de4f7127ee06f0f58597970752453fcce6ad98e2a6423e474e9d0b5751ff"
    "uk"
  end
  language "zh-TW" do
    sha256 "fdd00c8d6e7b1ffeb043f2dafc8277bc849898bdc1deddd3dadad63245c0f153"
    "zh-TW"
  end
  language "zh" do
    sha256 "4ea78bcd223f17178c4eaf7a9cfc3e970031703b07d97daefcdb1de8e4971053"
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
