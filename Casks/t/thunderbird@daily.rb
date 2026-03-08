cask "thunderbird@daily" do
  version "150.0a1,2026-03-08-10-15-19"

  language "cs" do
    sha256 "7d417d82d49b2e55577f976df1726276fc64408b482e80051fca69bb4a7df4d2"
    "cs"
  end
  language "de" do
    sha256 "947a58794b70f41c2be33c7d5e18fa408f409007f7628ec7ee4dba7ed7079b13"
    "de"
  end
  language "en-GB" do
    sha256 "f2d899f7225538e4ee2b998f53cb839077549cb9b1d668eb2d3da49df63e90b7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a333574981fe932a3a40eaa95042b283e813e1c89e8dd8f81176b602ce6f7c09"
    "en-US"
  end
  language "fr" do
    sha256 "22a77945237328ff999cfe7ffa061700a784e58f029ad0ae7e8dc86bf43d11ef"
    "fr"
  end
  language "gl" do
    sha256 "e9de3dbfb4484d64e23d58c523095051518556f0ae266bd515d0d11bc9535724"
    "gl"
  end
  language "it" do
    sha256 "bdacba1e0ed4d350e026de493cc34ef055c6d21fd60129334466bd09d8dfa851"
    "it"
  end
  language "ja" do
    sha256 "1955029e627c7d6ca7c80136453c08d20c9d2b1172d9ccfd8b57863e50cf40db"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "b902debc58f4bb65c0e5535c18525c26e9b30efa013b002ee00a789523bf8cde"
    "nl"
  end
  language "pl" do
    sha256 "4cbee6fb72bfce813ab26e29a0d9d0734cd1e4f6757dae4a5550ffb35a040192"
    "pl"
  end
  language "pt" do
    sha256 "45044d9c3616fb493d5cc096871e81bf5753e91b50f3520a87617a78b578385b"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "963f6eabd42d82831170b517c044f0375f017255a0185ed6b9bad5f83f1d3c41"
    "pt-BR"
  end
  language "ru" do
    sha256 "70a90902990f0eb0b7592a1a28ff4134ab1a69843191e718166c5ece68b7de9b"
    "ru"
  end
  language "uk" do
    sha256 "cfeae041a0b474596d55d50f89550d77a063945225cb50dfb4518c029b9ecd10"
    "uk"
  end
  language "zh-TW" do
    sha256 "fda525e4503bbda8a6fd6a1bf6bf8f5c01410a1ad5aa885547d49e7989044cd6"
    "zh-TW"
  end
  language "zh" do
    sha256 "93dcb540f2b92d6cf3e799930b2053f777d18c7abd70307c602f70344e4fbcdc"
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
