cask "thunderbird@daily" do
  version "155.0a1,2026-08-13-10-41-22"

  language "cs" do
    sha256 "5be4c83e0f448dcb77035afdfd98dfed1f2a34a5b1b2250832e6e6834af798b7"
    "cs"
  end
  language "de" do
    sha256 "f0484539c0f093ca96cb675b7d16ee3d445c3ce12385f65edd87565af0b08636"
    "de"
  end
  language "en-GB" do
    sha256 "cb58b7432933582a6a072279d6cfd7fc61928a0ca56297fef15a9502b984ac39"
    "en-GB"
  end
  language "en", default: true do
    sha256 "4063b8d1d8f5d5a76e4eca874df8babc6953c287af9a5f4c0e1616a6e719edf0"
    "en-US"
  end
  language "fr" do
    sha256 "1451ac4a7d298f6b61330918f65b53344d18e9791e9f861b5fb02a83faa2dfef"
    "fr"
  end
  language "gl" do
    sha256 "44b0da5158899e65520692bcbeadea7fab9c076d8334dd3c7ea4ac8a344b745d"
    "gl"
  end
  language "it" do
    sha256 "a49c24485353d7ae322b79908d269e151140041dc45140997bdaba5ec7ec72a0"
    "it"
  end
  language "ja" do
    sha256 "da8292a1d143c2ae416482c16140e4bf3fa48aad507f1dace1002a2eaacaaf31"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "3dcd1b9d9bdc26c3fbd75acfec2364226f401885bfa0536fec0d66b2e70c994a"
    "nl"
  end
  language "pl" do
    sha256 "ee758f6f4714f2ed587b085c3b079d5321d121ee3f2b036c701cd3872196a763"
    "pl"
  end
  language "pt" do
    sha256 "c6cfcc05aa85479b0be37eb98566dccb38a2568a1ad9928d72e58352ea8c6b80"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "47c8a3a158acfc31b6d4313fbaf6b71188c6f29c899baacb396675c7cf6d4630"
    "pt-BR"
  end
  language "ru" do
    sha256 "b048085cc882e5f748362a48344a155be7e7cb11ac276ee8eae226f2a39be6b3"
    "ru"
  end
  language "uk" do
    sha256 "1f4a2790e910cac0509e45d988c0b91d0fd4481e424a1f261ad81bc6440f65ef"
    "uk"
  end
  language "zh-TW" do
    sha256 "d875cbd442fce28c59651cbc7391d0ebf5aaaf018985a316c96a5f48ca568f6b"
    "zh-TW"
  end
  language "zh" do
    sha256 "648df7f4a3c3c8190ce84b5b44b95b753611ea64da5aed700a08f29d7d097cb2"
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
