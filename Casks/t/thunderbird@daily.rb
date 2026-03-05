cask "thunderbird@daily" do
  version "150.0a1,2026-03-05-10-22-00"

  language "cs" do
    sha256 "f5c7a6b6bd7287da37e5167e0b37f59d09b679aead9a33891f8bb5fdc735a3f6"
    "cs"
  end
  language "de" do
    sha256 "9a17ccb3b226d2541586fbc6e843a92e6f3b74b4bad2e40308b7092b0a0c9a1c"
    "de"
  end
  language "en-GB" do
    sha256 "b5b6a3c2281d12d96b6f6ce90c890dbe568acaf0c4fd7c65f14af78f54d1c08c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a26bfa54b147382313b9fee341b819dd87feefe1f3f4a4de267c94156f323452"
    "en-US"
  end
  language "fr" do
    sha256 "7f7642bb1b95564f43ae139d8bab0b42ccfb01bec338834bd1131d3537c565b9"
    "fr"
  end
  language "gl" do
    sha256 "6bdb6fad7c670646a775b42db44c6b04de71fb2c8bdd6a5e8da9c56d1d8b672e"
    "gl"
  end
  language "it" do
    sha256 "17bc8d6301992b3815ccdfd7410f81f6dc4280e74f5df5fe809759d608418adf"
    "it"
  end
  language "ja" do
    sha256 "6d8a87b1d0dc5df089031479c08feff2e2593a4f1601790876211c886a1c4f87"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4cc1a829e2dd9c02605d3685510ef59466fc71019865f7e71694293213659397"
    "nl"
  end
  language "pl" do
    sha256 "06f0af15556b45ed6a6f62d673b5eaf76b35c7b9a7ec7be7c5955e946d018cfa"
    "pl"
  end
  language "pt" do
    sha256 "10a3d027ab18c85fcd846a81b2c3ccaa71531aff358b8c011570191d7e569b6f"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "03d37eca9cc6fb119666690d8463f4cc909cbc372840965d82fee735629e5ce4"
    "pt-BR"
  end
  language "ru" do
    sha256 "4f33419c571d2f93eb8b46e18f748735f279daa5e2d01a86b11babe7942bdbc2"
    "ru"
  end
  language "uk" do
    sha256 "a4cdec8467afc59c7978210c8a06d8c62e2856591581c5937383e2e59b753e3e"
    "uk"
  end
  language "zh-TW" do
    sha256 "13b190a3eac19c9c126384b2c4ac8983a5f0a83b172604e0b414d061b181b640"
    "zh-TW"
  end
  language "zh" do
    sha256 "ea939b5dd891026bd253099680fb749964ec55857ebcac61fe7bc0ab48b9e353"
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
