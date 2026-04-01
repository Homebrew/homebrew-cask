cask "thunderbird@daily" do
  version "151.0a1,2026-03-30-22-44-06"

  language "cs" do
    sha256 "a9f01de2d7e828f4fd004e9d5d6eb075bc1e953a90352bfdf11b1517f1a26c7d"
    "cs"
  end
  language "de" do
    sha256 "d64909beba715a21a23f98383bdca1dfe6a274127e5bff9245409b8db87324f6"
    "de"
  end
  language "en-GB" do
    sha256 "6b9849edd75f69c25d1ebed4db1dac45b0d20c5df9c25a1aca6fcc2e829e0ce4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "fac4289602759e5a360414c410b0a5e18ef88946afd895d77989fc2134e10330"
    "en-US"
  end
  language "fr" do
    sha256 "0ef4025f76e8d858a7edeb411546c5d3164114c7a14a54a744762d26065ddcd1"
    "fr"
  end
  language "gl" do
    sha256 "e474d48d4d0676693cea09e0300bf325ed506283964dd53334be086f513c30cf"
    "gl"
  end
  language "it" do
    sha256 "334544cd586c642acbeeb6e4086b055764d3e28955881dafe477444b60b7c272"
    "it"
  end
  language "ja" do
    sha256 "43dfb42aa478fc2f7a14965e99e39a628ad2283e1a141a5af40f52c94783a3a7"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "0439dd301128ecd3d6960657656900fdd31f24da2423e19776a77ccfd90f017d"
    "nl"
  end
  language "pl" do
    sha256 "c765a4394c2643e8fc0d0363a93e372724c4ae714b34a9bc5ca09e8b746eef92"
    "pl"
  end
  language "pt" do
    sha256 "04f6dfd44e7ae64e80651f0d6400fc1e996e020ad9582209549cff870e1821fd"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "1502f93bd31d166166474b8630237a3bb86cdba3e29288308cf4950192adf0c5"
    "pt-BR"
  end
  language "ru" do
    sha256 "ce509b31677c6b8fd9a9c1a87c4dc8b1f82974fab2bf6704771215fec603f6e5"
    "ru"
  end
  language "uk" do
    sha256 "f0e696046d5190a06f01da876f270b5e496286e984d5e0ae5e8cc25703d53208"
    "uk"
  end
  language "zh-TW" do
    sha256 "1715fb4cd5c4cd25d2fdaea26d955db33f9e504bb2fdc91b15962f8bcf8c872c"
    "zh-TW"
  end
  language "zh" do
    sha256 "743be34a8a0daf8d2a6ed1bad782da963e7dce670c287b1fd0088eff9cc625ce"
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
