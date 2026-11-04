cask "thunderbird@daily" do
  version "161.0a1,2026-11-04-10-53-49"

  language "cs" do
    sha256 "0bb22d0b34daf0c3165c7a1cbf3056e0d2f0cd56eae42970114d8ce813f05bf0"
    "cs"
  end
  language "de" do
    sha256 "8dc5140e7c17c6edb36f76887d8ec7937caf6dda2c2f9ec5f9810ca6700ad4aa"
    "de"
  end
  language "en-GB" do
    sha256 "799c431ca48153cd97e05ef2225f38b7e712afa9deb941fbd4f468c3fa6579d2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "e92b0e553a22bef3da9e0ce17336f42c32c292771ab22f37b720cffea44b31cc"
    "en-US"
  end
  language "fr" do
    sha256 "85a6d1dd1b1f3413fb72cf50b9228957934ced963ce6ea5020a65b27c75e2a4c"
    "fr"
  end
  language "gl" do
    sha256 "c551a21c6c9ccc6cbf1c530ba835f0f922d17841905d1234c015b43862a9f21e"
    "gl"
  end
  language "it" do
    sha256 "bbc5e4df939338759b3f7a99ebe4ccce4dbc47be13080861cc501145b1733d6e"
    "it"
  end
  language "ja" do
    sha256 "d71fca2c63d5e8ca0bd97f3a6f535ee9c79e63b6cf5412dc3125ac53a4cd941f"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "31dabe8e19586390c2b7e41fe89abf3cd62415d8a017d8a6282e7499972d6b49"
    "nl"
  end
  language "pl" do
    sha256 "31192a1d57c3f4e3961f46b5bac73ca39658659cd82910129d09ade39b0aca37"
    "pl"
  end
  language "pt" do
    sha256 "0d03c18395afcaab9eccc10d084d353e2c2af7c7a027a971aea09a7239c57ad0"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "36f02725cfbf2b1d92b0c9b298fb5f36c78d577398800b61afa073e860021d68"
    "pt-BR"
  end
  language "ru" do
    sha256 "1f3c4e54485bef29dad3372c83d09b97e4bc4538f93052b93ce91f28d1bb7c22"
    "ru"
  end
  language "uk" do
    sha256 "7687c98c22f949e2025934d9d3d4acb764c9954e54597898b4c18800acabe495"
    "uk"
  end
  language "zh-TW" do
    sha256 "a79f5e146b8a3a5d44c68c23da04050e380341b42f39ed7a3cab31c79ed48119"
    "zh-TW"
  end
  language "zh" do
    sha256 "3360aa88f6d255798cd5b99d9e09b6889f875e428e6ae44d735bb555ee52d129"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/thunderbird/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-comm-central#{"-l10n" if language != "en-US"}/thunderbird-#{version.csv.first}.#{language}.mac.dmg"
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

  uninstall quit: "org.mozilla.thunderbird-daily"

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
