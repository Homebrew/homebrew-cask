cask "thunderbird@daily" do
  version "154.0a1,2026-07-12-08-19-32"

  language "cs" do
    sha256 "e2ca436fe0602cd789a676493ce9d2c6030ec7b1882bdd842f3d852b7f6f1fa5"
    "cs"
  end
  language "de" do
    sha256 "4c02285748b651548a73f98cf97caa6b1053a2b9cd7f6ec0e7717c8a656bbaa4"
    "de"
  end
  language "en-GB" do
    sha256 "453cb94911d3b8107cd83e019cb5355b59909b331082906b7ab078b1b6b79b0e"
    "en-GB"
  end
  language "en", default: true do
    sha256 "778d0ffb8b594a8527cbe73ee57640908217ca773d9d065703bff88d3ecdbcf3"
    "en-US"
  end
  language "fr" do
    sha256 "59e29c0a6c19d95e441d171f24a180ca3ce93eaa6aa14233ebe12f38d3b3b239"
    "fr"
  end
  language "gl" do
    sha256 "9a512d8588dd44e094d857056327167919932de8a8061790cb863dc34a0884af"
    "gl"
  end
  language "it" do
    sha256 "c196099ebd3f36aff34f2ac3efe13f8591380a1f85ac19e7b8e6b949900c7b00"
    "it"
  end
  language "ja" do
    sha256 "32794ebc746c224926345255f836d84c1907c456333da4cec4346f8481d83da4"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "194056030baae69b465a5f6ff856af5418837e929961f2582addf14be06fb829"
    "nl"
  end
  language "pl" do
    sha256 "79b24ea9d3b31d4c9393ce97fe62a24616ea19017cdd225f66da7ca451f823e3"
    "pl"
  end
  language "pt" do
    sha256 "dec40cfcc07a8de89589d1ad62a95ad5f85c6d8a728440fc9a452e451b8a062e"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "1094b7a24279aec4750f39bd40e38c41673b22a64869efb1bf2aa2fec71076ed"
    "pt-BR"
  end
  language "ru" do
    sha256 "1562ace8bb2255518f4c1d3a7f94fac3642a077186d1c7fa3014dd6811861804"
    "ru"
  end
  language "uk" do
    sha256 "a559c95f96fd7731289b601b98be51c955dfeae40b457c4020855c909d629b20"
    "uk"
  end
  language "zh-TW" do
    sha256 "c259db7eebc67b2e5d36a416942989632097d3e0690afba4a859996b5372223b"
    "zh-TW"
  end
  language "zh" do
    sha256 "83079c81e20674bf68abd9afaa7611a173779f8044f10e2aab6a3dcf9c120f30"
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
