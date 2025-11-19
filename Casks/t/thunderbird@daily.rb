cask "thunderbird@daily" do
  version "147.0a1,2025-11-19-10-07-08"

  language "cs" do
    sha256 "2dcefe05f7f3e57bb819b91fc428f96851465c3ba996688d3159c72d7003df23"
    "cs"
  end
  language "de" do
    sha256 "be14f6a350e8b5a47c3c105b2191b175edbcb1ad7fb6af532ae76d9c10decb56"
    "de"
  end
  language "en-GB" do
    sha256 "b7bc5c31a9b7b7f6640f57a63e163ac65dae2e7a0839d1dc6181bf923fa2e35f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6d9f7f86dc0c1d09a114509d628bb124798599898282ddfe65f213f539c1aa66"
    "en-US"
  end
  language "fr" do
    sha256 "dcd01e985bbcbfab6df2f2e89bbd805575c86b7500a749704eac39ac8b40e979"
    "fr"
  end
  language "gl" do
    sha256 "ae261304c326d59b9bdad93f1877d6a1be7a0e0b0fd74bc9f2adaa4eed166d89"
    "gl"
  end
  language "it" do
    sha256 "bc9dcf79b40f85d5b2d3e3c5ed77c6ce8f5e1d11615c6c46cc48980a28d5efe2"
    "it"
  end
  language "ja" do
    sha256 "daca5ea2739542adafc73f66f41ea8f494e649eb742712fb3c14bc16807b3aaf"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "1f5745f113ea062ecbc8ffbc39b8ae670e7ffd8fea2aaae89a44368b54a165f1"
    "nl"
  end
  language "pl" do
    sha256 "0e2d3f1707178901d1fabdaff59ab1b820ca62720ee6c2b03324f14eb5a90743"
    "pl"
  end
  language "pt" do
    sha256 "b532d0756d2ebd9058d1604ee9f1dee5b67ff6c15ab123688b8dce4204eacdaa"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "7e679886cf8c58bad29a935dfa32eb2c39bbea29b7ce330c5021fcc3699f5102"
    "pt-BR"
  end
  language "ru" do
    sha256 "cce9d23395cf15d27b0612f3de2be5aecb00c7de86a6b1fd87aa95e0d76530f7"
    "ru"
  end
  language "uk" do
    sha256 "d5d5c186b4893d203ab4cdef6ce78eaa88f11853780a4652ea98a3dd144f0cb8"
    "uk"
  end
  language "zh-TW" do
    sha256 "a410733f6267af600bb26c39b06b179a860c18adeeb5bd1b5c673f69ee85257b"
    "zh-TW"
  end
  language "zh" do
    sha256 "dcc765300388a1b19ef10cb8fd391a560e49805b7586aa39c29a8458f783f4ef"
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
