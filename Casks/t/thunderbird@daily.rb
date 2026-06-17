cask "thunderbird@daily" do
  version "154.0a1,2026-06-17-10-57-50"

  language "cs" do
    sha256 "6b97097d8a71b25d243d71c6c25e745dd1a49d0b502361e45f4b79b8eed2e2df"
    "cs"
  end
  language "de" do
    sha256 "a092c89c26efc0818097af7d925751e020c55e7eae3f7c6476d39c81f1f9c69b"
    "de"
  end
  language "en-GB" do
    sha256 "893219badb3763119ccf03f66d55c0293f25e5acc064c9ef1d84aebe2eaa441a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a6741194dcb0b313a5c20b511fa2d068544b2fd42c30fe5e55c2fcc8d985a3d6"
    "en-US"
  end
  language "fr" do
    sha256 "edebdd3059a36c9b6ec310e999d2fb545f7fc941dfe7cc9e191061613cdcfa0f"
    "fr"
  end
  language "gl" do
    sha256 "fc8ae09dca881ac403acf944637f5cda4d49d1c2312756e7e63389b4ab117bc9"
    "gl"
  end
  language "it" do
    sha256 "62af36c49b1b82cadecf4358ed736b3f16141ed9fad6a13e84169b5619d9b3d5"
    "it"
  end
  language "ja" do
    sha256 "a96f530be0259f1a901a2d977cd1c9fb2d7ee970a47bb3823996a6e42bb43731"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "17a5771d6969cdcff7803c75a4af9b1d9029def159d3827698e593d92c372e21"
    "nl"
  end
  language "pl" do
    sha256 "5d153ce9957f674389b92aeef1713d95b84ac06b69cef362cf6ae160404046cb"
    "pl"
  end
  language "pt" do
    sha256 "41e7e5363e7fba859d967c8e6abaeddd7983263e766bdc82e8f8892fc39a70e8"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "b3484b80732efb05ca9e107056f527fb3044a17ca28d7e08246edcbadf9cb3b6"
    "pt-BR"
  end
  language "ru" do
    sha256 "f73eed78180c77f07760d79a010d8556952a016d4ba71ad3f646986bcc269c85"
    "ru"
  end
  language "uk" do
    sha256 "5fa7f428da147995cf9ae8e1c36c669213dd4dbf288b63d16fba0e9fa23d6ac2"
    "uk"
  end
  language "zh-TW" do
    sha256 "9ea1921fc7cd1b5a69d0490213b3987fc1b7a2dbe104bbdc8e61854ef0623179"
    "zh-TW"
  end
  language "zh" do
    sha256 "61c066bc608ac961e91b1da9d2585affe1ce5a44b33cbf89bd392b5b2290f1bc"
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
