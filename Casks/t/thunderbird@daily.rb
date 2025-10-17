cask "thunderbird@daily" do
  version "146.0a1,2025-10-17-10-29-32"

  language "cs" do
    sha256 "918ac1e03eb37ea90ff5a6b17aeb271ef2f1def8f929f146e22cd9ba8e97dd85"
    "cs"
  end
  language "de" do
    sha256 "da5a23d02d6cb27563dcc68bee22912e6ff917a46cfa91d049d7bca9d289432d"
    "de"
  end
  language "en-GB" do
    sha256 "9b88be057894742263ca984c8a350d2cdd72ddb398f9c09dd95cdc97902677d9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "74ec50e86dc3d74e04e7cf1a7853384997f9fefc20ad45a73e8061aa83a6ec40"
    "en-US"
  end
  language "fr" do
    sha256 "306c4378fe8418d2406185cb280df8a1b91238c68bd5fc94a19894579e5ecbc9"
    "fr"
  end
  language "gl" do
    sha256 "1925a278f8204ba96373e8efc134c50449358058b48298eb273288b1e306e940"
    "gl"
  end
  language "it" do
    sha256 "76f15626e48c44dc7e8af71fc037742c0c5227963dfaf494993464ddd7561d69"
    "it"
  end
  language "ja" do
    sha256 "fbaa1addbb311e531d75cddd82e332be3b4d9c81675f29b70b2d6f5f4f9f31e5"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e425c4c938c11e70546582e8c71ce9c4f587c298a96062dbd5a67e955fa012a9"
    "nl"
  end
  language "pl" do
    sha256 "4c35564134abb276c84e1f4ad1eb8cb4c68422f4c9b53b47a63ebfbbcce79866"
    "pl"
  end
  language "pt" do
    sha256 "d6f9478bcbed9b4df0bc7fcf0b6ff85d85216f02874873b61e23c61d5141cb68"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "159b29abda01f97de3026261a495ec10bf02feb6e2f4a2ea1b9e2733a06ebe4e"
    "pt-BR"
  end
  language "ru" do
    sha256 "202258f27eb645f700858cf7dbeddb82ad9b1362b73945d1012fc27593d9aad4"
    "ru"
  end
  language "uk" do
    sha256 "4d1027bc0877bd2f8154e1115d1be74f7f076f763d163a66778f029e03113b24"
    "uk"
  end
  language "zh-TW" do
    sha256 "7c90ea44d365590d9ccf5e41e5eaef46479632bf68f5873a881a064b43a63dd8"
    "zh-TW"
  end
  language "zh" do
    sha256 "a2ca0849f972aa295bbcca5ed3b08ba1aa6b33174687f518bd42e7dbd8dba260"
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
