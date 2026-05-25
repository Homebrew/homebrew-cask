cask "thunderbird@daily" do
  version "153.0a1,2026-05-25-09-38-52"

  language "cs" do
    sha256 "b2311f1bd8d9fc23421aba9865a682037f3cba39b845c762e3520fdcbf9d6e59"
    "cs"
  end
  language "de" do
    sha256 "d332ddc3655b3d8d8d788864959d8c635c5e115f1e8812afb64ae0fa67b77598"
    "de"
  end
  language "en-GB" do
    sha256 "23ff4583db4bd08afcbc454e96afa3066c11ff963fb920c34a205acb38854051"
    "en-GB"
  end
  language "en", default: true do
    sha256 "80353881deb52670dba42641d6270fa32daf3d9efc2261a942c2fde71a76ee76"
    "en-US"
  end
  language "fr" do
    sha256 "a3f4dfad1c01c25b492f82b0624ec37de5709b7e68d2c23d3cb32fb6ab660269"
    "fr"
  end
  language "gl" do
    sha256 "b3e0c564535c0290c0836ccc4308c23e5381d62db838d041e367a997f8468926"
    "gl"
  end
  language "it" do
    sha256 "69f0d63d8d51817cb7a30dceecf1917cadbf611c9a2f21f704d3d6c3712dadca"
    "it"
  end
  language "ja" do
    sha256 "0c521458fe3934d89d30166ffcac0199475bc09ac072aa4f405a41f86de03ce9"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "8f8f25418e7dff480ec0345230a15e854a4cdf20ef273b78aabc64805fc550dd"
    "nl"
  end
  language "pl" do
    sha256 "875ceaf0a342ba428c9048d32d66cdd31cf89b6464728ee063d9c93fece54d0e"
    "pl"
  end
  language "pt" do
    sha256 "adb97a26984d59626a2369c82b4fe197f7bb97a71dc83274976d83675876c796"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "61d67c9f4e5b0f4cee38f2fca5ecc203c07354975c4ef72c798cf52ddaff25a4"
    "pt-BR"
  end
  language "ru" do
    sha256 "bdaac961072ce2ebca0b4de7f59eccb7a99acaa4d518c9f1779ef3fa81f2a82c"
    "ru"
  end
  language "uk" do
    sha256 "fc447821c0b7350be5c2b11026a9031a32ce748c66230841ca582987defe9b7d"
    "uk"
  end
  language "zh-TW" do
    sha256 "69b01f370c37b8483b68c21c9a45eabb91025fc1181bdae19a197f64b8bd55da"
    "zh-TW"
  end
  language "zh" do
    sha256 "125d33ab49a33b921fff9ea4db797fcb51137490af8db08e4bdb6460f2d2d062"
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
