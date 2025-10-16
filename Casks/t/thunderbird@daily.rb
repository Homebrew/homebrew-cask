cask "thunderbird@daily" do
  version "146.0a1,2025-10-16-10-36-53"

  language "cs" do
    sha256 "da692c04a3e136666660a5b9d2cd431a2d32e4199b31b34fd9907df448d9ede0"
    "cs"
  end
  language "de" do
    sha256 "c8267dfc775f9ee92eb203ed02952e409c600cf1b6135c3c8f6d67615c1faf32"
    "de"
  end
  language "en-GB" do
    sha256 "84b52b6648f69fd3499c13daa164bf18bce3e7b9dccac279c71cc541ce4291e2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fe4cc4ea502c575d991075b9fc6ef523e23678c2afc1ed8df35d37c8121bbc65"
    "en-US"
  end
  language "fr" do
    sha256 "f340fcecdba479ba78b3f8673148f0e419b0219d2693a3b97eb3746e75f4dbb3"
    "fr"
  end
  language "gl" do
    sha256 "4d3e671ba74b917cf10712a8324aa290895f24c0637cc4de10daa7a120767075"
    "gl"
  end
  language "it" do
    sha256 "88e411e8b0aeee98713bac5dcc1275757aa5ac1a0e7064d1af6ede12ecb5c065"
    "it"
  end
  language "ja" do
    sha256 "aceef9725f2e5a7b4e69316b472b73583bb8b2619d82054be912f78eeaf494ac"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "cc328aff01e9605b375d7c2aef256c8f41477176ca7381cde825e9d93781edf8"
    "nl"
  end
  language "pl" do
    sha256 "1d7f082003c37e7c37c8eb8608d30dccdd5d7d484a451e04d26ac7751512e681"
    "pl"
  end
  language "pt" do
    sha256 "bb7035bad0029612a43f286892527be780347c16d32f0131d79559eb30f58503"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "1d7467144470278b236cf5aedb369b8216f3c5edb4d4705a4a344bda9d89f915"
    "pt-BR"
  end
  language "ru" do
    sha256 "0adba49e12a7836f5f7ea78f6d337c72548127a3ddd9818d0917f990f38d92c3"
    "ru"
  end
  language "uk" do
    sha256 "8417b627390d1107609e668b4f00ea84b2eff37214597e60edc42beef5c6365c"
    "uk"
  end
  language "zh-TW" do
    sha256 "d08c45c0aeeced720e4f40cb7ba5e4a7f86d30ef027585d4a009f02337033282"
    "zh-TW"
  end
  language "zh" do
    sha256 "658133a10eca3b056c663810669d4a10bb915a9807bdf0b3d62c83036e684cac"
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
