cask "thunderbird@daily" do
  version "156.0a1,2026-08-18-10-46-49"

  language "cs" do
    sha256 "deffb7acd95c366adf8565f19d9d6c001b2cfd3c418dd3b21e7d2886678500a3"
    "cs"
  end
  language "de" do
    sha256 "538cf93df964604f0f79fabc9c0a7e20d7557a443f1c4c8df088a03796db6985"
    "de"
  end
  language "en-GB" do
    sha256 "f36eb2a298e44e15eca14238bd262c6d288a088153dd053c5cc897988614d8f9"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b3fd6b1a55e3dbf3cac7b1d92e211979addf461a731b2afc8d36982ae576a761"
    "en-US"
  end
  language "fr" do
    sha256 "aeeb84c6496545000f66123a66f98a4bd5b6ffd6c8f0a2de7f0e6b521f30112f"
    "fr"
  end
  language "gl" do
    sha256 "c66258b511b1cb2b4ffe8e2a55528a3a3e8e0c522228eae1f78d8bfb3c48762a"
    "gl"
  end
  language "it" do
    sha256 "502814af11932ea6a9f81f018c3a9ccb3f463f4e1be0fb00c6a95437e86483e4"
    "it"
  end
  language "ja" do
    sha256 "b2962896800c2c2ab297a11f11ba4b731d237146e2b2791b467f1e414f143c82"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "8d983161e0b1dfa89c48d65d48d3dd3427fbe3eb154bebc46614c77da8192fe6"
    "nl"
  end
  language "pl" do
    sha256 "a96f13173633593761276bb1a52f7d738db7b68e870c550a730da783885c1d3e"
    "pl"
  end
  language "pt" do
    sha256 "9975652cc1c63c31856803039fc7a2d4e05a56489d659a3f76eafed92ba5db23"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "ab9ca554c9ae5996e6b75b5b45382bd8018092f263e5c28f869076e80519941c"
    "pt-BR"
  end
  language "ru" do
    sha256 "f62900a575c850485cc93a2f0a9a870be9089252c1902343593fcb02d8a0d6aa"
    "ru"
  end
  language "uk" do
    sha256 "ea2cd473ff88a83a58a066b6fe298cd2d4b1b12202c6a384c5c4b1ef19a31db9"
    "uk"
  end
  language "zh-TW" do
    sha256 "91504fb52f289c63b225f1280903e78ac7bfe5d494572917747e4890ad78f9b3"
    "zh-TW"
  end
  language "zh" do
    sha256 "7d7dcd094e8c2785eca8bf09d1c1779213e1e18a73ac16a4878d99051d7f0df5"
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
