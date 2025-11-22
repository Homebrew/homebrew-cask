cask "thunderbird@daily" do
  version "147.0a1,2025-11-22-10-36-23"

  language "cs" do
    sha256 "70f98236dbdc7519061403f45929c5cae63ab24c0e37110c2db92121a32c348b"
    "cs"
  end
  language "de" do
    sha256 "66a238dd35a3209a0594cc31e857971c5cc664a0ffecde46d1de3cb2233d4af1"
    "de"
  end
  language "en-GB" do
    sha256 "a300f28e3fbbac36d1b7d3ce313e856b72710ff9ab13ea8af2e03cb23d69becc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "eaf88d28e6057c8c72f56015402973fa630f6634a3f3270fae00b6c5ad269618"
    "en-US"
  end
  language "fr" do
    sha256 "3f05aafef0195fd636bbc8ee2c84efe4059bf9fc63597b808162350aa32034cc"
    "fr"
  end
  language "gl" do
    sha256 "a89fce5f0aabb19337f2e8e1a3ceeac94b97801188b4b7ddccc30a6940fce165"
    "gl"
  end
  language "it" do
    sha256 "398784cbb3fc904b61f5fc7beb146ea7dc99a925802847a45e15e257ee7d1fcb"
    "it"
  end
  language "ja" do
    sha256 "1495b2c9afbc263427ebfcea906c17c01e08693dca924aa5635fb0f8d01a94d8"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "7ee2d74715419c752df2151a4f07fa46461f63d1a3a031fca3b3c834baca5239"
    "nl"
  end
  language "pl" do
    sha256 "2447e9326c8d1384054475484546d364e18f60c22c2f16c07e748df7b989da6a"
    "pl"
  end
  language "pt" do
    sha256 "bba8d92cda264c357250cb66c589b6ffe7435d7a1ee1d60e6102f2cd18f16268"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "ace7a693eb7c859aa5994abf8de7352e43f06a4b02c0fc03f867802eb7bd2328"
    "pt-BR"
  end
  language "ru" do
    sha256 "8757cf7a8b9119dcb5307c621494cd2a834ced4f7de9946536052b5a28731fbb"
    "ru"
  end
  language "uk" do
    sha256 "33c6ee29b14ecaf9cec865c465a1b69ca9af5b6f8c1ba74af220a8741109290f"
    "uk"
  end
  language "zh-TW" do
    sha256 "e053b6f22e4e9754d64a4164a02e6a6ab68f9830b2f0bd88255e31cff8aa242d"
    "zh-TW"
  end
  language "zh" do
    sha256 "392420b11f28d0c3e004f4fa28e0c0852e7cf35d9e85461d8f120fe87b96e5de"
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
