cask "thunderbird@daily" do
  version "148.0a1,2025-12-27-22-59-58"

  language "cs" do
    sha256 "8daf51e546aacb4b6a1f64d01d4b51d70a5b5c3cd40a4d21f4c956641845f5a5"
    "cs"
  end
  language "de" do
    sha256 "782b09189cf954774b1d96e39e36e4fb9af52db3db6ca52c74e2a858ed384c55"
    "de"
  end
  language "en-GB" do
    sha256 "dec4cd59c8773df613c93133b6d6184c49bdded408d62ac75f218243fe64f8d5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8308d529d8437bf5738a8ba7f161068f8d862ab01b68ec319772fcbfd0804569"
    "en-US"
  end
  language "fr" do
    sha256 "3ae8b0a667787b6e7b1b7a930679285c7361f69458854cd78300d19116384d1d"
    "fr"
  end
  language "gl" do
    sha256 "435f14416e709e450b6297c988d1f5ea56c5e9f055256a4a9d451a7feea01a77"
    "gl"
  end
  language "it" do
    sha256 "81d9a396829b0627973ec0fef366eee85a5baccd7a773a6daf73230d1a9fd19b"
    "it"
  end
  language "ja" do
    sha256 "0776afe1a6f61213aa665e39a3a94f415a5584c9c2772cf2df51a87e47b50556"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4c50a4e7ad8a522a55431b7e77889307bc632c39332de0c98844f25a17b53022"
    "nl"
  end
  language "pl" do
    sha256 "1a55468e2e66fae2f4f6ab0201c5c6cb7874ba23d0d1b47c48cc124941ce59a7"
    "pl"
  end
  language "pt" do
    sha256 "8e805b66bb7d5a2b604c82c0ae624bbb1c094041caedc5c5212d0d8afcfc8129"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "63b703ce4ee3515e2253d150c64e2259cc8cd8c1757cceaa3c23625abeed4e89"
    "pt-BR"
  end
  language "ru" do
    sha256 "d763019bbb4767345b3a75e336a7d2766a347f254e2b7366ece2793b8acb5df2"
    "ru"
  end
  language "uk" do
    sha256 "61dc7cffa99770f2052b0f270ad17f78eb9b1b0a397b1a031834f852159b4617"
    "uk"
  end
  language "zh-TW" do
    sha256 "15707033b477f1c36913c90d4a94c7598035910abf9cea62415a7c527d828355"
    "zh-TW"
  end
  language "zh" do
    sha256 "12821debd75c493fc5b5ff4556c04df892f617953b5da40e192c8a0438221a27"
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
