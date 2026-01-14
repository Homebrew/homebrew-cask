cask "thunderbird@daily" do
  version "149.0a1,2026-01-14-10-02-57"

  language "cs" do
    sha256 "cce2d90bcd74d38695d75c158567d3f507b8faa9d9346c56be18c209debcb27a"
    "cs"
  end
  language "de" do
    sha256 "f91871c668b29ae0601b025baa77f322843efef792be49c710352de8bf15283f"
    "de"
  end
  language "en-GB" do
    sha256 "9dae7e0cda47bde5ee7aaf98fc8e6a4c9a3134e0129c55744f1ed4b4b98d2efd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "09ae643ac13f76785ea822869378d46d5deadc513f8b0135acc35219f3bf610d"
    "en-US"
  end
  language "fr" do
    sha256 "29374d7b59fcdb98975d69ecc633b4c7eebcbc3c89da76de5cfc8d14fd56bbe7"
    "fr"
  end
  language "gl" do
    sha256 "8e4a3a06892a03bcc32ccda49b8a451e0c7d7be16f31c7b09b13d7ac03bf3390"
    "gl"
  end
  language "it" do
    sha256 "e4984ae88b2878ea6f4f4c2db6e7c0ddee7302adfcb57c51f66b87d2751afd6a"
    "it"
  end
  language "ja" do
    sha256 "5e3348f7f4016d43047cabe001579b2d8f167a9ccc26adefd4bf2b39183c5124"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "0bb77d29f6bc5f1cc7029325f6d01885a9648f242943b13d674b47ee6c7b65e2"
    "nl"
  end
  language "pl" do
    sha256 "78f25537f54a8b74404f0f9ed442cc591a11b6da60ad886e83470fa4b1aa850a"
    "pl"
  end
  language "pt" do
    sha256 "1fad22eab4d2e6cc0590eaa82076efb09de3010806702a65f5c88e8076945f96"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "4025fcee1da469309b627071df50ce698b03ed5cd877227012b6eaf28f523772"
    "pt-BR"
  end
  language "ru" do
    sha256 "3ba5b258a8a6aa5c440c8510053208111c65823d48fc2bba7b442a9a604b5b49"
    "ru"
  end
  language "uk" do
    sha256 "5c28b90b8eab2b568b3ef355345e7a5632aedb0588b36ceb1bb7659f5035783e"
    "uk"
  end
  language "zh-TW" do
    sha256 "3127e0db94fc2f5a17cc2d9c84c190b7269b6339171c646ebd34f22897842e32"
    "zh-TW"
  end
  language "zh" do
    sha256 "577cf8bb705fcf7a11279aac2d2aab7f8ea9ec79a2446d4a57743bb7d037d0dd"
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
