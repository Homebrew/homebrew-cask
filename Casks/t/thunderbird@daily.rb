cask "thunderbird@daily" do
  version "141.0a1,2025-06-22-10-24-37"

  language "cs" do
    sha256 "2b47b965bca663292d98bb869dc96b6236fe903c3291199d3d7e339b7b8cf0cf"
    "cs"
  end
  language "de" do
    sha256 "2f38cf20d8b2bb3a84626492072fc9cd028bffeff7f1cf3d200cd76c706a9cee"
    "de"
  end
  language "en-GB" do
    sha256 "5c6ddf0a46c32a1537dc690ba5b253e30d2e845374bdbcf0e76d39543d613bce"
    "en-GB"
  end
  language "en", default: true do
    sha256 "3d9d0f67effcb30c9e5dbe03666ee85dad2370868be8705edded80e5dd30c0a3"
    "en-US"
  end
  language "fr" do
    sha256 "2f5f5c263cdd20f2346dda14c2616210ba3ecef735e0c8b17c8435e968e5265b"
    "fr"
  end
  language "gl" do
    sha256 "f0780e0f5e04ab8982f2ba15429f6ab10a751b5e26f8d02a1b4a0b299316b6e4"
    "gl"
  end
  language "it" do
    sha256 "1e2dfc3ebc95a180145d14e0865926e08949cc26610483aaf8e7da84e289ddc5"
    "it"
  end
  language "ja" do
    sha256 "d0dc72269a916f0f6070e2ac7d35ee510566844f17a9e5ef58ba358be1b3e672"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "46ae33390423501b8e2e58d7c97595bccd6569b57cb93591276e136f49d7dff0"
    "nl"
  end
  language "pl" do
    sha256 "0b1a6af755feb080359303753faa6ded41bacfe35bf887e318b2b4b3f20adef7"
    "pl"
  end
  language "pt" do
    sha256 "7d75e510aab5807a55a77d615f0c6aa56a4cada84d34c35ba1668a949a96968b"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "4b72fd51742a896e427b36422c316e64d14072b087bd26dbf815cf93dd875f4f"
    "pt-BR"
  end
  language "ru" do
    sha256 "ab097c7887ffbe8ce581f319359a14dad762787f5c460dfc248e8336077234bf"
    "ru"
  end
  language "uk" do
    sha256 "9f7163366f4a3b8391bd6430963cd1805c551f87033d8416cd084be9c0f0d3c1"
    "uk"
  end
  language "zh-TW" do
    sha256 "40547bc9a18f233c8a918c1315fd32ed4d0b437cca068de6788db194a7aa4e11"
    "zh-TW"
  end
  language "zh" do
    sha256 "4b9fa9c8c3409c3b29f1fb9c915f5863dcd6316743460531e72668ac0f8d022f"
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
