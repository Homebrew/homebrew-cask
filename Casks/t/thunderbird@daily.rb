cask "thunderbird@daily" do
  version "155.0a1,2026-08-04-06-50-12"

  language "cs" do
    sha256 "e27e38d0f0185425722e41270c0dd413da5ea336c84ea8a9c62b8e018fdaa89b"
    "cs"
  end
  language "de" do
    sha256 "59177052d2655e233ec8d91832e9318c3d2a49d12b3406202c93cd57c4bb0599"
    "de"
  end
  language "en-GB" do
    sha256 "5d36e1873c5e6198720a964bc03403ee15f3e56d86fe8d1974f80e5f860d7330"
    "en-GB"
  end
  language "en", default: true do
    sha256 "062bc6f16fbf0e82f48e4e0f57aa425c85b525afaa67e45882abf9436721dee1"
    "en-US"
  end
  language "fr" do
    sha256 "153f7d8334befbc2f3fcfc36c999c0ca3c2f4056aa08f7a3270d53d9b1ee3dc7"
    "fr"
  end
  language "gl" do
    sha256 "5ac5d7591e331a7befdd3bc23690e28417876495049fe7e4d147cca9b9ec1a9b"
    "gl"
  end
  language "it" do
    sha256 "d28cc5a6c35eb908ebecfc16d788e275ee43d4b8c910df5b814688ceba473024"
    "it"
  end
  language "ja" do
    sha256 "f71ae2b61484fd5e54193629dc95a512eb245fcde8c62cb776c70aa5ca465157"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "78f97d142c65130917e4f449fbbbb3a624765cfa06358a2b896d93b34653fc35"
    "nl"
  end
  language "pl" do
    sha256 "dd194d481f3f62a7ddd554b944149f4c9b32ec65bbebc8d7dd25ef317a739308"
    "pl"
  end
  language "pt" do
    sha256 "95075831d6c64fcf60908e68e40ad99523de086f4ddd90e5a2d6ae2c94a3285c"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "ed803d362038c127d2f6640de109357c250d5775cb635e13d7ab81994542cec2"
    "pt-BR"
  end
  language "ru" do
    sha256 "6535c10304ce444db166bca5ada2bd9b115f22cf64ff9b01e1f267a76bfcb547"
    "ru"
  end
  language "uk" do
    sha256 "61a06916d15d9d1af2d4bc0b76b2f28b95d3c98d0f85baf55744ce314cdaf47d"
    "uk"
  end
  language "zh-TW" do
    sha256 "62546eaaa72bb0c2d0df88c922e1df9a833d94637a33d96cac13a2c34b94f5e7"
    "zh-TW"
  end
  language "zh" do
    sha256 "d02498ad1e324bfe080aab3120ab29c2c4e3c530ddbf0eb0c589857be268d4a6"
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
  depends_on :macos

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
