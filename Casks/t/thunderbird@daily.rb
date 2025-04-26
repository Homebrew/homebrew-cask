cask "thunderbird@daily" do
  version "139.0a1,2025-04-26-09-47-47"

  language "cs" do
    sha256 "cae7d5f5b9dd1aacf8c940fefafcaf3684b69beba4184b9a21d2f01563f2e2ee"
    "cs"
  end
  language "de" do
    sha256 "7f43179dad50f5f35238e93ca74fe82805d75a7c2d1701db54ff97bedd1cc578"
    "de"
  end
  language "en-GB" do
    sha256 "3fc12da721481e6e08c9d108235408efb2565230be8247b1323db029d8b216ae"
    "en-GB"
  end
  language "en", default: true do
    sha256 "81172fe81d2422024ea22282cd8557631cd5f743ee6ee73dac22f05294404508"
    "en-US"
  end
  language "fr" do
    sha256 "f0df8bf804bcfd15671d52bc71978eda63cdcaf7f195380d5868bcd125ec1d04"
    "fr"
  end
  language "gl" do
    sha256 "286d1ca7e8d6178a17a56ae016c1b174b39fe2cef0aadb1c8672d552cde104a7"
    "gl"
  end
  language "it" do
    sha256 "a131660f8b1b6a2daea2a345359fc455ab1487d90cb5fc329b1ffa3c68142831"
    "it"
  end
  language "ja" do
    sha256 "961cc1f6614aeb2885d4b34f63d3e91e841878f294182459ade437fe339542d1"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "241038659b1a15ec2d7ac8d9250ad76e95ca6574fd885b7b63f585c96ad1e3b0"
    "nl"
  end
  language "pl" do
    sha256 "ae742fca8490dabf3e16afce07d1668b855a6b60ae6e07f7295cc4eb07958ab1"
    "pl"
  end
  language "pt" do
    sha256 "186bc70804981e6dee1b91903ad78ebef1341b7eb6fc2cfcfc2bf78290448d60"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "37a8947688abffe860bfe982a9d8e10f7e89387811fc4b652209423285fb997f"
    "pt-BR"
  end
  language "ru" do
    sha256 "aaba84a8a5e1fd226ef314b4825371909bc8bdd0f26100543dab89d2b82fd051"
    "ru"
  end
  language "uk" do
    sha256 "cebfc3593d7e7de991e70322a741ab64f629a0c7a8eb2ee3903187a7b53ae9d9"
    "uk"
  end
  language "zh-TW" do
    sha256 "6c515b36c3156ac3e7bf6d27870aab6402005e3a734a1bb54af9b31703c88fe8"
    "zh-TW"
  end
  language "zh" do
    sha256 "e59c1cd6df8c3d1618c92c6eeac635c75cae2b6b1abf37e41bce83638aba1712"
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
