cask "thunderbird@daily" do
  version "157.0a1,2026-09-10-10-22-13"

  language "cs" do
    sha256 "26ce81959a4d966298d3770593fe5c0112df3379b0d35bfb631ac6c1ad193886"
    "cs"
  end
  language "de" do
    sha256 "3932a946ae00b792ffc010c9a57864ef55285ab4bc1e26d0a6feb530a759bfd2"
    "de"
  end
  language "en-GB" do
    sha256 "96c38627ae0a0fbe7a5d223135fa4a2b6963e0b405f97237f61fb5091c5a9c3c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "654a232b86c7ad627670c129326edc3bb6434cf2b63d825c531b9ab1ebdb3c78"
    "en-US"
  end
  language "fr" do
    sha256 "a18af94efe4374d1ac2432b425e4ac9a520a8275c3ac9d4e0756391b275cefb8"
    "fr"
  end
  language "gl" do
    sha256 "4b52f7934b2e9a6e38d441c154573fde8c918561aa1f442a8e4563ad8f771a12"
    "gl"
  end
  language "it" do
    sha256 "2a760763b286b98ef9cbec280abac6b00031246bb995232698fce28e4659ab43"
    "it"
  end
  language "ja" do
    sha256 "144a0e7a88513e2e9abd2274b2f774cfbf73ec4e3c2fa0080c37c29ee9a71bed"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c1720b4aafdf80c6b79c5ee35b7e00ef92b7983392e809c4cc8a7102e90679b5"
    "nl"
  end
  language "pl" do
    sha256 "1efe681ec19651f7ac9c4c35a0adc98bccb79219d7a0a9a4dd424b1170dc008d"
    "pl"
  end
  language "pt" do
    sha256 "5805beb69d761b7b5686cd38c5f26710210b8cd1b90b6c23f761a7524ce2c31f"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "c284a29b653c2f38179160c7e3ef062d662267b43e86580e0116141f1390dfab"
    "pt-BR"
  end
  language "ru" do
    sha256 "fbca673361d90a9d4d533af4c630d67ae9acca071d2843d75a49834fc3734822"
    "ru"
  end
  language "uk" do
    sha256 "d90c63996211486813c8a0e1beddc92ba292e97db8e0821524a2c0776db28b93"
    "uk"
  end
  language "zh-TW" do
    sha256 "5dd9c6527975a9d6cc1f23cec71274627ad379164ccde02675eb74cb898dab95"
    "zh-TW"
  end
  language "zh" do
    sha256 "6c80d0808b3dd5b628a54e9df37558ea576428a88fb66f6470f2e8d26a8a9741"
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
