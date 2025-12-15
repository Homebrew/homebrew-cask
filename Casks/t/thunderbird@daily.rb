cask "thunderbird@daily" do
  version "148.0a1,2025-12-15-10-58-56"

  language "cs" do
    sha256 "6cc37f6f589c257eb63fa38932c7030bef30d2603ea342fee8a837354392bdd2"
    "cs"
  end
  language "de" do
    sha256 "b7b9a8b7f5c654e79c56bfa8917a5beaa97512b47f838c76fc15704e4e3d430d"
    "de"
  end
  language "en-GB" do
    sha256 "da2dbdba6b9fc2ed76174b3c1aff29764893ee308b09df8e7699bb75a62d0f93"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8c6ac87cc5aa0b9142b43abe067ee404e0b57a44bffca4bdca9ac27165bd3fda"
    "en-US"
  end
  language "fr" do
    sha256 "c110a9e215cc910ae95c41bf3081c662b70f74ccb6f0c14b9e45290b4fd9c419"
    "fr"
  end
  language "gl" do
    sha256 "b900470f1c47f45bb2e422f8fddb8afb77d503d42a357dcb66d132f778e4e63f"
    "gl"
  end
  language "it" do
    sha256 "bfccf9f218f3c7f6e6601c5fdba8493029dbcebbf5c8e7b926f233f0dda1a9dd"
    "it"
  end
  language "ja" do
    sha256 "9aabf6f91a70720ce1d920fbe975bc87b4c468bd000630d3d0340a2ae46a9da2"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "5c49421eafe0e8634258d7771e799d661142bf65b60a08c83afcd106ab46a474"
    "nl"
  end
  language "pl" do
    sha256 "4a084f6c28df136d4ac2c2f2cccc229c434cf4c1ec32998357d33f9d2c81997a"
    "pl"
  end
  language "pt" do
    sha256 "80f27c56618ab18caac19d42970bd8b840878f7d84d8ff5b977e23b370c0b904"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "128107c529aef3639d7c8959560b547adcbf7b5e14ec0a195fd8a5eb54f841d8"
    "pt-BR"
  end
  language "ru" do
    sha256 "a9bab031447143053d6eefe541d03ba27310ac4bc7c1c7769f6646cb71e61440"
    "ru"
  end
  language "uk" do
    sha256 "10b834255997a02e0ef3714cd5a8ff2e9f109d84b5bbd3ce17a768128d67ce00"
    "uk"
  end
  language "zh-TW" do
    sha256 "873c22a646ad8ba8853f3012ad603233bb6a25cb1a465414a12edd51ea09a495"
    "zh-TW"
  end
  language "zh" do
    sha256 "3a088b698aec98e1445d7b82927acad3e74264e3f8240bd4773bfd13d43a573a"
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
