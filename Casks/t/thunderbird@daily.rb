cask "thunderbird@daily" do
  version "148.0a1,2026-01-10-09-38-37"

  language "cs" do
    sha256 "862196050b9122696038b24a5a388fa06d413c505184df1b2c47c42558e22112"
    "cs"
  end
  language "de" do
    sha256 "8cd0b29866ccf12b4227c0d4578eff694fb5bdeed5bdf5d848dd71c805e66a33"
    "de"
  end
  language "en-GB" do
    sha256 "c191f6c0d4dea541338180e56b1baa3edcea60596fbafb97976574f2b0ad80c3"
    "en-GB"
  end
  language "en", default: true do
    sha256 "87334136c026c6ef8803649160b4b9c7f62594443ecf2ee2cc9f0853f3d35ce3"
    "en-US"
  end
  language "fr" do
    sha256 "58ae9fe7978b922f9122af9afc647d17bcadff0caf185c29cb0f3e8d6c005ab7"
    "fr"
  end
  language "gl" do
    sha256 "704dbf37e931c0c2d2b56ccf65053607e4acd4071141c51a0ea85f868876cfe1"
    "gl"
  end
  language "it" do
    sha256 "5513507cbaec74ab23f64de02d69b07dd2430045bdbc6a9dcc14c99d8bb928e7"
    "it"
  end
  language "ja" do
    sha256 "1b2ddb213b25f695ea5f9382e17dae64c4707d5f235f4189d78296525e2891d3"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "4b0dabfb377e71d3c855745a17cbf595e45ca46aac69df37cfc9ba709cf11fcf"
    "nl"
  end
  language "pl" do
    sha256 "17501eca832e9122359f2b0851476b03c36625857fa7a9aad4c3802eacb1c03d"
    "pl"
  end
  language "pt" do
    sha256 "f6904658aaca7ec9b6a871d8cc049ad8232595c26150248536128b27ecbd5553"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "69bde52739d13bc15c2a22e1e5ce2dab453777fd056cd498471e3de97c04362b"
    "pt-BR"
  end
  language "ru" do
    sha256 "4601b24170a57d8823ab02962ff2bdc7e4385dd6fe68e4c792d6869c22299d5a"
    "ru"
  end
  language "uk" do
    sha256 "13fece0abf1e630d21458aecfdddbe1e8fc6cf7bbf366eb7d19f6de9d57fca6e"
    "uk"
  end
  language "zh-TW" do
    sha256 "4a55f8010ff508e5abe703ec4824cebdc48d9fb53ef77a64ddc8b4772a92dbac"
    "zh-TW"
  end
  language "zh" do
    sha256 "f95eac659c64898f8aab560dd1d6665d6ef12a4b3aedcc36d8ff260018110086"
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
