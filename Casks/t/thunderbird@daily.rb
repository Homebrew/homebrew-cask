cask "thunderbird@daily" do
  version "144.0a1,2025-08-21-09-47-41"

  language "cs" do
    sha256 "09e15cfa164fafb39919f209d9969020745512945f2757c525821ea74fbe26f8"
    "cs"
  end
  language "de" do
    sha256 "47c59bf3c6d6fbaa21a5d73309d823a67df5c22ebb4d32be6ac9d1525b35b6fd"
    "de"
  end
  language "en-GB" do
    sha256 "b30e15caa7eb7e31b6db296892d77b60e114e52ff184d9b5aa887fb968ab29b1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8aef6c870a33d47ad01277f4a597345225a227674f26ecc7e660912571ae62be"
    "en-US"
  end
  language "fr" do
    sha256 "4544f9199f2f5fe0c42dd48d7537c651c9e417c96629dd4ce97d80bd4c2b676a"
    "fr"
  end
  language "gl" do
    sha256 "025218ad98fd66dd6ba40d7319026d4c3f56262ee763e3f298536eccb2ef351c"
    "gl"
  end
  language "it" do
    sha256 "82294c52c928230f34c1c589017e33a2e9fb27205a534bc265832b5de37c4d1d"
    "it"
  end
  language "ja" do
    sha256 "437d717d2db99f85d13c2552c0173d1bcd077c4cae3e2189e49dfb113bde48fc"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "671b1bee94ce994fb9f625d9de749dedb95c38520721652e53dff3d85ea87d9b"
    "nl"
  end
  language "pl" do
    sha256 "08dee64c128d745726319b561ab1626bab80f61ca9a18d498b3c647f46dd9b6d"
    "pl"
  end
  language "pt" do
    sha256 "09529035f454f241bbd846b9e43ea062a0a9374fc91103519212c9935a2c6efd"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "ad9eefaf11a384727e6e396d7f37a5df8002b5f5d82a1aed5297102b354cefcc"
    "pt-BR"
  end
  language "ru" do
    sha256 "8cf49b5b37091f71d017df5f19ac048ca219d637b9418dbc70de07602fbfdcf4"
    "ru"
  end
  language "uk" do
    sha256 "fb9a99548c3c3bf30b5619730dec5c70eead9d51299d4de5875ea9cff63b597f"
    "uk"
  end
  language "zh-TW" do
    sha256 "f9086e965706622525c7993d1c403a1e448297ad2659fa692d008db9db7c92e5"
    "zh-TW"
  end
  language "zh" do
    sha256 "482ed47d0a6a30d8fe13e448b1285d1e4a9f750e2cfbef29dd5830addb56afdd"
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
  depends_on macos: ">= :catalina"

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
