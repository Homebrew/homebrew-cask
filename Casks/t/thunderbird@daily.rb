cask "thunderbird@daily" do
  version "145.0a1,2025-10-03-10-50-21"

  language "cs" do
    sha256 "479b7eed2b75c06ad3bc33d1dc107bbf346fd71f0891402363feb3ca1d555e57"
    "cs"
  end
  language "de" do
    sha256 "793fe23aa0d9943cf7824b0ad9a1b10d165cc10592c6edfe22eb1471cce87094"
    "de"
  end
  language "en-GB" do
    sha256 "aa8fdc9403dbd498eff37bb311c2cc8843f8ed07490ee4c8f7ba6f0aaad89403"
    "en-GB"
  end
  language "en", default: true do
    sha256 "15187f36bd290efb07e81e248e35112b89e8f099ed261ebcffaf1b94770e0f4e"
    "en-US"
  end
  language "fr" do
    sha256 "7dd9287543c0720456e3aea11ebfc901ff08f2d277a0ed41886c47af791b0e6a"
    "fr"
  end
  language "gl" do
    sha256 "d8a51a217626f887ea14b30d7fa8061d54eb6b3d19758961f826fbf2129c2241"
    "gl"
  end
  language "it" do
    sha256 "6f3c457d5fdc6a5c44fca9cfaf33acb2f1f63982e6dc1b0730559d0ebe375454"
    "it"
  end
  language "ja" do
    sha256 "081c11286d2618b07f31168b9ac0fcfd2d9768f6c274835f423ee44ced1447af"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "e6d3bdd29c4393fb798e62b9f290b05215364571d048c094990575f6d3deedea"
    "nl"
  end
  language "pl" do
    sha256 "82866faa6da0d767536e74a05c523214a4c92857f92c4cccbb0cfdef6fd0ee1c"
    "pl"
  end
  language "pt" do
    sha256 "6a1cb8a6be6ed6dae0bd19828cd8c38e83f906b2f6a82eb43d86d6b00a2d54b9"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "38115efa369191c4746f20fe8756a9f33983e1e4e03a1161250518b95957143e"
    "pt-BR"
  end
  language "ru" do
    sha256 "18ae806ecadc30aec1c058b3081a77058e74aa7a68af404c7b3ba04e62f8e404"
    "ru"
  end
  language "uk" do
    sha256 "33b322e38b257bd993cecc86fa43850a72805799e8935ad7dcbbcda257f9f71d"
    "uk"
  end
  language "zh-TW" do
    sha256 "1a0061a859ecef18a4be0b443437a64f5d2a6444baa84bb52169976a88c5638c"
    "zh-TW"
  end
  language "zh" do
    sha256 "792bbfa15dc60555d902605e2b1b14a894cf6f1c8f4b5a4f054847d609eb41d2"
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
