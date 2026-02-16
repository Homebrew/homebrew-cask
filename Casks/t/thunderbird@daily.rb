cask "thunderbird@daily" do
  version "149.0a1,2026-02-16-10-18-08"

  language "cs" do
    sha256 "b57643c6f61a98e0bf70ac8870e66b09a577ab216c59f01925b951edf16ab0c6"
    "cs"
  end
  language "de" do
    sha256 "17c1a3d781ca3089bd2b205925d574f1ab103fc26f1b9a3120e4517e73efc020"
    "de"
  end
  language "en-GB" do
    sha256 "57d96ef4a59e129b23c8e4f8eeca02439f400d6f429bbb0cfd58d71012d19920"
    "en-GB"
  end
  language "en", default: true do
    sha256 "90ebbadeced59a884a8b7e97aa206766b0a36d11d8921eb9b43d3e82206f1d7c"
    "en-US"
  end
  language "fr" do
    sha256 "b7e3d9f793299f5f504a3d004cca594a94ce5cf03b0886ef03e1ab81231e8a7c"
    "fr"
  end
  language "gl" do
    sha256 "32bd8d37e7e505180c27877a5c54942187df125a20f1cd74e1a829a2dcb99bba"
    "gl"
  end
  language "it" do
    sha256 "e04538cdabe570d1a0a4d08ff7f1a9815aa39425412e9e2b65bed97759319bb2"
    "it"
  end
  language "ja" do
    sha256 "8a6c154a3b316f04a4e5fb8eb8d71568d0841d524ba6a270d9de39caf5eae6a9"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "fc9b9a72c04ea516926101d961b19c0df289bb251a314e1f8e62b5f3a2a6198b"
    "nl"
  end
  language "pl" do
    sha256 "d180b8813b33252a763013b20cc9f786e5e25cdb187bb77140db01f3a082664b"
    "pl"
  end
  language "pt" do
    sha256 "03e9d8e1befc25c853344ad4ad37b708bebd27c4ecdc0cfaba23f55055e928b7"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "04d2b8ab8085c54f590674c1cb26d7fedd202db714c17e615647589222091c62"
    "pt-BR"
  end
  language "ru" do
    sha256 "2863190300be40d06ec247d4782e6ddfd71bcb80a67d5817b421dea7c0366112"
    "ru"
  end
  language "uk" do
    sha256 "52a6b5cdd71bd3abb204e7a960aa1ef84ff7298c52e0b0ee2cc0a75f3dc4eace"
    "uk"
  end
  language "zh-TW" do
    sha256 "c188b7551687df6fb7e7d038d2b555f1bf6f737c1504d8fbf43b5a770dff34d5"
    "zh-TW"
  end
  language "zh" do
    sha256 "d6b91661b2ad56d5fb7840a6f56d84ed569ceac5a036c44fad06b17dcdc6a529"
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
