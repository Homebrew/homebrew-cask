cask "thunderbird@daily" do
  version "149.0a1,2026-01-20-10-03-15"

  language "cs" do
    sha256 "d6bf0e906f9d1102121bbc699fce57563077e60665651306a96eb647b76991f6"
    "cs"
  end
  language "de" do
    sha256 "7e583218b77508af4255a09160593085b20634139137043b21abcc3d2ad912fe"
    "de"
  end
  language "en-GB" do
    sha256 "d6c97c8554ceba4c5ab4716771542e64b6b33715f7e18f96dfbe9537ef27327a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "33aeb8f292c60c3eb6f9906c0a1df5faf5ef7156ba58cbe77fff49c8db7ba23e"
    "en-US"
  end
  language "fr" do
    sha256 "2b89d3ecaa767ef22f062ad168783eef71fe86d9543b12e2181ac42a8ba079c4"
    "fr"
  end
  language "gl" do
    sha256 "7abc2a1697e4fa2a7945d3eec6603c6a9b52b4b1d1eefbc65edc28a45de7d3b3"
    "gl"
  end
  language "it" do
    sha256 "9df4097cd93dee59b5d51e7be1598b3e0ac411cf76657ea6083c6d4199c61f5c"
    "it"
  end
  language "ja" do
    sha256 "58d0237dacdad48134e82e051fd30e9ff1209f01681859b37d124282438f02dd"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "0d67522d7f86a6524d778ea75ddeb888fbd1d4ab4701b70413fbbe7ec50b8a51"
    "nl"
  end
  language "pl" do
    sha256 "ec17cff2d4e9fbe51690af54689a4d09e2a355e4dd68285997e72a781ab61277"
    "pl"
  end
  language "pt" do
    sha256 "dd6f35d1ccc0d443ff8f89791cffb281ca495ef1746d924492196e0bf02808b3"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "02fd94b4ae6fb159d6db6ead092bca1df1ed006fd195e3db2e8fae60e7bba635"
    "pt-BR"
  end
  language "ru" do
    sha256 "6a8f0e4429357c31536968d89f10dccb86c74263f1b45523706591901bc92b2f"
    "ru"
  end
  language "uk" do
    sha256 "7e147908b39a31d5fe9281f4359416905bba869b19b832435206cf2dc4ac6114"
    "uk"
  end
  language "zh-TW" do
    sha256 "67c72b748fd179352dd1c9497eb5d48882eb4318a1e2d0a3a3ac4b72850f3d30"
    "zh-TW"
  end
  language "zh" do
    sha256 "0c978e0530bf31d395c6f193ed7d761b78afa1bbcb8861d192ce526b9b14d549"
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
