cask "thunderbird@daily" do
  version "155.0a1,2026-08-03-09-58-35"

  language "cs" do
    sha256 "a7b2a06cd8bb31e50b034c3e6101fcbea0139f48839a2c21352589d3924754d2"
    "cs"
  end
  language "de" do
    sha256 "9e0a072fffaf24e1b4e13a2ce28fab2890434cac64ac623e04c9641127b43669"
    "de"
  end
  language "en-GB" do
    sha256 "e32fbe4739160c7ee1152b50219717670e778413b47f1bc9384844bdf507c57f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "c6a80fc6ff89b859f3470682572ebd9e862ffe4b47667dd3e41042fb42e948ab"
    "en-US"
  end
  language "fr" do
    sha256 "03fb6367c35aedbb56cf0a448ee00602a7534a3b91decaf5db247573c4fa3db0"
    "fr"
  end
  language "gl" do
    sha256 "b7b68bde55af94349991a30e1fe0de598cc1a58a2ea1b21398b4a94fb5b2e9d1"
    "gl"
  end
  language "it" do
    sha256 "2592032dbc10f01dee7a76455981bad36d1bbac6d987be4261704ac4a876a9a7"
    "it"
  end
  language "ja" do
    sha256 "5b3523906b900a65b5effc94a2cf2509c44d1c09e4cedb657d9f154614cfca05"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "1bcc2a2134e1510b0200cf69f2d8a1e3f14a30198fb569a292d234d3127d923c"
    "nl"
  end
  language "pl" do
    sha256 "4305faf36de9e9c4ef5584dfd74d5af785e8be9c3de4e36a32d3777ec7001c02"
    "pl"
  end
  language "pt" do
    sha256 "cbb722daf816671b7822942786171bd0f06f9df1c60ae36684e8b16ab744c335"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "d65b60c2d6b4d322f689b3c86b2e565b4cc24fc6c4e385288575ef9c1958bfdf"
    "pt-BR"
  end
  language "ru" do
    sha256 "a93ca1d4bf0ecbbf89ef122c8a0a837003c7d6bec115608d2b8b83496ba7bd90"
    "ru"
  end
  language "uk" do
    sha256 "f4dded4a0e61ceb34c7989ee6b5aba67290dafdeb19af28b7218548b24373712"
    "uk"
  end
  language "zh-TW" do
    sha256 "5748ce8b6b3121aed3a2df583d704a1daae1c0dd231dd747b35b4e8086a6107b"
    "zh-TW"
  end
  language "zh" do
    sha256 "d7d6ddc8e6c3d8be8f5d87778554eae78ebeea78ab368af58de6ecbf2836ec20"
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
