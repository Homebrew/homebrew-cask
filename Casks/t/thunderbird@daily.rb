cask "thunderbird@daily" do
  version "145.0a1,2025-09-17-10-39-55"

  language "cs" do
    sha256 "24d3693fd80e95f261a4ffe9c3aed240d7ca711ead00ffc2ff8c3d36cfa192dd"
    "cs"
  end
  language "de" do
    sha256 "6460bd563acd102e1b72acb8b48223b7364e76e3b656ec142454127716970c56"
    "de"
  end
  language "en-GB" do
    sha256 "f647e81d89b27063e9bbb35c1051bdca287e24578a462d38852386f29dd16c8e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ebbc8216547b42e009eaeb4ddb83320262db0a47c6c850784880f42a48b6bb9b"
    "en-US"
  end
  language "fr" do
    sha256 "7d3706594cab5b458ecd8050156afc85282aeb1f90fe65ace5cb60c2c6b71246"
    "fr"
  end
  language "gl" do
    sha256 "9411ca5b1dc099ea45b16321dcd002af345010b15423566694f13ec33c0220d3"
    "gl"
  end
  language "it" do
    sha256 "c043ee473883a63b5419c15870a0bfa6b3ac01234620d15cd3471abc8eb04168"
    "it"
  end
  language "ja" do
    sha256 "bbff0c04281ffa19fbb5d895669fa66e30627c68e630322712e79db8bdf95ce9"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "1248b29b514ec42af9773d8ce93ec47b86d825e587d229e42119a065093718ad"
    "nl"
  end
  language "pl" do
    sha256 "f5d9212f3cd31df9aa9ada7e66083545aca2d016a05155815c67e5f61398c876"
    "pl"
  end
  language "pt" do
    sha256 "e81f3479f18c072c6f9dfc16d013c565ea22ea31ea740cdd48dbd6303afd3114"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "b07112ef6407e17166b81673f6784af0dada278aa4ac549dbe425d6f634db696"
    "pt-BR"
  end
  language "ru" do
    sha256 "c8521e44aa25cee7ee30883156389e28a482e0d59fdc6e7103a7d4f6cf3383dd"
    "ru"
  end
  language "uk" do
    sha256 "0e4e0c1e468efb9a3b2274e6e2e6cf2e7f3160dca13abadf4f3d2c436fed9e9c"
    "uk"
  end
  language "zh-TW" do
    sha256 "e7a46b27c0b267afb2bad48b3d4430a1c3e8dcddfc5336719e05f7f698766bd3"
    "zh-TW"
  end
  language "zh" do
    sha256 "d99d4e6be18f1b1b2880606566f2eef608ddc226094d7eb50e1fae75e5ba9230"
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
