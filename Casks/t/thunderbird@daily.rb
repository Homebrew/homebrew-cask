cask "thunderbird@daily" do
  version "162.0a1,2026-11-15-06-49-33"

  language "cs" do
    sha256 "edb0c18ee1523acb874f85849586df0966fd38c9dc0b8609d9a4b06549340148"
    "cs"
  end
  language "de" do
    sha256 "893657875baa5aea57d4a5f8697b89aa0ac2cd2149de998faa4b54504e56dc06"
    "de"
  end
  language "en-GB" do
    sha256 "4c860e5afea41e5c230a761c36a603286928337d92197734b170190e5d90f2a3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8ffa5e5f20b0d1b8e10bc98c9e128a6354d28c08f5edc951dccab1b72fb3de70"
    "en-US"
  end
  language "fr" do
    sha256 "a748e04442b0183fefee16a9fd1a537ed69fbe4bf06e6ef113edb039bd951521"
    "fr"
  end
  language "gl" do
    sha256 "3be6c9ba1fe1e65cb25b5b05dae45c88b75b7223d5f780ea14d0384c08435025"
    "gl"
  end
  language "it" do
    sha256 "7ae8f1b5c5182ac6921d4499b22ded48d6f06124fd7ee8efa7ae31b7e8bcc24b"
    "it"
  end
  language "ja" do
    sha256 "baad8988bef914e2a8ea9a0ad66458fb09571dd7fd3cd880f1d3599148899e62"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "8bad2a626aa5a5bff923c0dcd6385c2e50c49a3024627e21b4cb84431c30b7f2"
    "nl"
  end
  language "pl" do
    sha256 "107a5b44690edb66d122128525e30ac9ccfcfe7464a3f881572116edad4942a1"
    "pl"
  end
  language "pt" do
    sha256 "64048af30670cd8907c46957cba107f4eaf2c6d96e2e30e45c75c692eac58395"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "477a10682e6ca60a5b838b9d70e425d1248f46a0e5a1537a6813b15dfcdf3c5b"
    "pt-BR"
  end
  language "ru" do
    sha256 "82d2e6aff6bde988905ce660a6199183982cd2bfb7c871f091746a97aa866990"
    "ru"
  end
  language "uk" do
    sha256 "2900dc72e123d412b03348a2e269f030a04843fc443236d589a6cc6938671bcc"
    "uk"
  end
  language "zh-TW" do
    sha256 "a48a3a1a03c8c4961b356dab38b771865ebceb34039502f824dd220a3d341fce"
    "zh-TW"
  end
  language "zh" do
    sha256 "82a2295063d9438cada9128761b1f2b20f0a6b09401f2bb95818360428e5e400"
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
