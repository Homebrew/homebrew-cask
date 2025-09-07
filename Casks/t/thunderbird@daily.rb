cask "thunderbird@daily" do
  version "144.0a1,2025-09-07-06-52-45"

  language "cs" do
    sha256 "1b35dc79b1f14554d78710ea44882b01eff2607c8bf9096e1e6fc5f092b9ff6b"
    "cs"
  end
  language "de" do
    sha256 "e5df4a04a1fa8a1c754f6ba392e3b04725acf54ddd3f2a07ec1c509ea4a3fe87"
    "de"
  end
  language "en-GB" do
    sha256 "90964a58091e6db172d0c527dcc710ee252dfa569c3cb615b5f7ce353a26a444"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9bfbee3378bd37358fb349cf3b41da22ca95a3de0715b5892c7a45896a0b73a5"
    "en-US"
  end
  language "fr" do
    sha256 "e3c3bf7b84883ba1c65a114fb06e5cd74640f02284524c40864f83dd83d05a2f"
    "fr"
  end
  language "gl" do
    sha256 "627a92db8f3de1a0ee2c27683ab2aebbe8f4e01c44e724ec9ebde1e5f5187237"
    "gl"
  end
  language "it" do
    sha256 "0a6aad5a8aedc212648a0b12fb284dfd3e82e918cf1c3bd0ea732e4c90db262b"
    "it"
  end
  language "ja" do
    sha256 "459582f1387f5cd90d3370c9ac7a6d74fc465dc31f40e34c66025a60fe00a2e9"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ca89995ce210bb7fec39719e2533ea216cedcbb10009e19ae571a2b5009df8b8"
    "nl"
  end
  language "pl" do
    sha256 "6005c483dab9535ee874731c3b73ae3fd2e0c57fb3090a09f5062b6e2b02df01"
    "pl"
  end
  language "pt" do
    sha256 "fcc0f06e3bfb4a6703f1228eeea224f19611c23d6d88e7ec136515241195211b"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "3f2cb47316e8964c22d88369171eca3c78073c3ab9cf09a021a9e82f679bf6e5"
    "pt-BR"
  end
  language "ru" do
    sha256 "df1044e0ac76e4129bee5fdaa2b7c130ec23af1cbe5d9830ca7ef27f3948ff4f"
    "ru"
  end
  language "uk" do
    sha256 "b301ec1c0743f2939cba3a18fdb47b188f9caa7cfadd2575c43fb1d92e254788"
    "uk"
  end
  language "zh-TW" do
    sha256 "bbcff777b8348617ceddba0903d9a3101bccd7d1465398274b607195c4f3c0d4"
    "zh-TW"
  end
  language "zh" do
    sha256 "96c30b9c4538edf2eb380b9ae6b1a41feac249e604880119a05161f128c82c8d"
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
