cask "thunderbird@daily" do
  version "157.0a1,2026-09-01-10-52-58"

  language "cs" do
    sha256 "884931024912d00319163b724a9fe4156fc83b49d4d8efc495a2dde8fadc8c14"
    "cs"
  end
  language "de" do
    sha256 "bb56dcfc83d4389d982bad572060b34ac47f44393c6eec6c44c4341b6ec5931a"
    "de"
  end
  language "en-GB" do
    sha256 "79951ea272381866aaa0c425f0253732ab1f50e2562cac6921d9fa601dec721e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "1b69f24015c7f7a600f439c7ffd3eab71a6d723fe37306fde1adacd85a006591"
    "en-US"
  end
  language "fr" do
    sha256 "aa55618219db5a04d32dc2f0f722d99e31a8c48af1a7ba00a95747901db3f164"
    "fr"
  end
  language "gl" do
    sha256 "0422768589b0d5e8ceff4ec123576e9868e884e9f325247d2a85a389c24378ae"
    "gl"
  end
  language "it" do
    sha256 "eb56eeb3d7761e3ad25114790c6575bfe69fc564dc6276353ac0bb079f5c1845"
    "it"
  end
  language "ja" do
    sha256 "e7b1a4b7f3c38dedff11dcb83a80c76e552699f154d2e7ea0c37b621a841eaf5"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "0137bd94298dfffc8193581e713d8b8879a3780c3557cb8f2bf550433af578e8"
    "nl"
  end
  language "pl" do
    sha256 "4db627dd8485048aaf13936df05273dcf59b005f1b7d3c119c3a5944adcae2a3"
    "pl"
  end
  language "pt" do
    sha256 "bec138ba8524dd9c47b2ec9f28410b682e0de5f0ae8c6eded4c9ac0b147a4393"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "9d9f14603fc8cbe491601784bfb0e91cec8302dc49dd1591092f040230f561bf"
    "pt-BR"
  end
  language "ru" do
    sha256 "6d5643f1e9b5345169f34538c7143a92c6864aa500f051066db62c9c413dab55"
    "ru"
  end
  language "uk" do
    sha256 "8aee17e7c7b770d4185d04429b85fee247f59f01e03e5c88505ebb210d7dc288"
    "uk"
  end
  language "zh-TW" do
    sha256 "57578ada03ae3da67b0faaba46e9758b09a3779d4aa783a01337a7946d405b7f"
    "zh-TW"
  end
  language "zh" do
    sha256 "83f43df8f7519c22a4beba66d24f8dff0bdf63179220617900953fbe72ac5c6a"
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
