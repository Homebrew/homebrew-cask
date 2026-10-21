cask "thunderbird@daily" do
  version "160.0a1,2026-10-21-12-01-13"

  language "cs" do
    sha256 "aad44b6754c3d2e73eaa20990d62a1e85cbe1cf07915b398b066d8b63c47a268"
    "cs"
  end
  language "de" do
    sha256 "abd5b66bff194491a8ae02ac033a5e1797c76f4b6babf601f273797d34b4d64c"
    "de"
  end
  language "en-GB" do
    sha256 "8a6f0801f98cc219df69da47b4678d437e7d2d88a93bf1a54d96a0b57745ed07"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2a1a8ec4eb7b816a05ccbf53730850746675c8f89df5ede8706eb17588aea63e"
    "en-US"
  end
  language "fr" do
    sha256 "ce6547d4ddb8b6c183bb4586cbcb9423bf426ca68fe8fb88527c6b386045e3b2"
    "fr"
  end
  language "gl" do
    sha256 "ce14bbdb730b35aad3bc3b5f8bf8da6621cbbe6c623bdfdba1280254afe543a6"
    "gl"
  end
  language "it" do
    sha256 "9ffa577be69f648f828a912344742e1c680f584b9fc333b1093eaf84e9aef3c9"
    "it"
  end
  language "ja" do
    sha256 "a58d0c04460805521deee8a0b275e1d95bc8671669e1dc38af71d1b0092950a4"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "dbaf2e50e23e3a23c60292318294d627251bc6d1f97f90c87181b0c45e16bf13"
    "nl"
  end
  language "pl" do
    sha256 "115d9d132fa077ffebfdad0e427cd41f73d9a4a56b1ac3df998fa7cb5dc11db1"
    "pl"
  end
  language "pt" do
    sha256 "ade224a15f9125b0d43746d7ef8709f44c40f85a87b9f14eaeec56e051272002"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "a93dfbf59d61529547a0eb21324fd385041a7e7aa86ac115651acab24ecdbeac"
    "pt-BR"
  end
  language "ru" do
    sha256 "e09d8e553747f3a20327bf2c767854b47f1c26e99490a26eca08a4d3e1a39fe6"
    "ru"
  end
  language "uk" do
    sha256 "90042a705a25b6d9dfcc75efee9d40448c35a2fe2c3a689f9acb86b4c15f5d11"
    "uk"
  end
  language "zh-TW" do
    sha256 "9077dfcf7ce183cca6ed7c54fb6da85c75480bcf1ca216bfbd2e5c1d0f6ad1dd"
    "zh-TW"
  end
  language "zh" do
    sha256 "0a697dfef89296339d2c249a610e8ce0a1946561806b049d0e2fcda4a0a95123"
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
