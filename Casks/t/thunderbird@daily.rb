cask "thunderbird@daily" do
  version "151.0a1,2026-04-13-09-25-06"

  language "cs" do
    sha256 "28a6a021b495a568558db925c5d3c2dbd1cfdc348d4f56f0892b323bcb0fc8ca"
    "cs"
  end
  language "de" do
    sha256 "32795bc2a4976a9dab27de15eb32c2159593cbdb23afbe321489993a406d57b0"
    "de"
  end
  language "en-GB" do
    sha256 "2d795c0b8df108cb9a408042202adeb18ba85a3d40686478276a2caf8a781a9b"
    "en-GB"
  end
  language "en", default: true do
    sha256 "5019de6bff326a360a76674941b0693f4d5738b45107c11fc7e0fd7ffa931469"
    "en-US"
  end
  language "fr" do
    sha256 "438f5c34c3628b868284c1e5b4beb954a897c3f5f952053beab2812b49db23fb"
    "fr"
  end
  language "gl" do
    sha256 "5573b15fa4ad2b7e15d1fa67d4a7d31d5859a352ceca693ddb3aabe0f327365f"
    "gl"
  end
  language "it" do
    sha256 "d6e656aaef2e4d4ae62cb1ea52641eb34e10aac570cbc4a804bd89fb8b39cfbb"
    "it"
  end
  language "ja" do
    sha256 "cab13374dc9a5c92b77f0fea0992b9e8bad15041f48573261e1b351f49f6427e"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ff21b577ed7b82a242a0db9b2aec5eb0a8e5ffe91561438a949817a93d5b51fa"
    "nl"
  end
  language "pl" do
    sha256 "85d9d0f9cd220d9acba8a3c2d1f387c758e212dba5d902dcb7b14d1aaa3832cf"
    "pl"
  end
  language "pt" do
    sha256 "a949a4a94934064aa45abaa5c2eba001ff9d4eb3717c4f4f96f5d651766b9176"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "d9a62b2574f815c136501c56cb22dcb9c44cf5b805228793afa8e3e5beff9bb7"
    "pt-BR"
  end
  language "ru" do
    sha256 "d0d44f5b1cd63218924a9ef7c7a5ca5fad92ae8bd5f19a49f7cd1ef5b05f25d8"
    "ru"
  end
  language "uk" do
    sha256 "457db8428c32c137a51976f813867552941f25068ec6afa521f5c74a1e25f781"
    "uk"
  end
  language "zh-TW" do
    sha256 "854e96652cef2166869d71bd2edd2054a8101f6814d14a6e5f9dd13fa1035cfa"
    "zh-TW"
  end
  language "zh" do
    sha256 "74c6d6c3ba7c4fb732972d8845bd3260731cc41e331592858b49f8a2d3303e0a"
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
