cask "thunderbird@daily" do
  version "144.0a1,2025-08-29-10-30-44"

  language "cs" do
    sha256 "cb43e97980984af908537a8345c50f39d76151001dc3ff6afc6b20358a13a1a5"
    "cs"
  end
  language "de" do
    sha256 "4f89efdf36a2289a3a2c5af7c9d0786cfe61300642525b4a72a2820e8f1d94a1"
    "de"
  end
  language "en-GB" do
    sha256 "783e09f41bdf0f0d1919e563f22b16fde6a27d7f5cc44545bf03f787599fdc38"
    "en-GB"
  end
  language "en", default: true do
    sha256 "72f87367698df98813c9315a0e988f3adad94432f29b423f81363afb2e353f45"
    "en-US"
  end
  language "fr" do
    sha256 "e6747beed03792a179823a4f788b8ceb8d8e83d75b7803012b79fdfcf74fb7b8"
    "fr"
  end
  language "gl" do
    sha256 "3b8e0ae746636cdc3a806e6074cd67ba22fc77155962278c9367da5d9ae7daec"
    "gl"
  end
  language "it" do
    sha256 "54ab5bfe56ac7aeb35103e3e49c50d215be0f6eb05022ac02c07a70c530a40fc"
    "it"
  end
  language "ja" do
    sha256 "407384fafaa116ff60b5900b4104290a8b145c707604814dd351fe880439e8a2"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "a13982ca2410ebd57f7d341265df682878c988e23de58de001601bdf92d2ddd9"
    "nl"
  end
  language "pl" do
    sha256 "826cd80f30e05ddaaa19ad1567c237ad4e174040f0ca5dcf23825de54021abdd"
    "pl"
  end
  language "pt" do
    sha256 "70cf25d00fdd17c90b8147b23aba1ae842ba7698a6f5e8dd31f009bb0efaef2b"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "bfdf66083086f2952d052bc002b819dd3a5545490dffafa930a8e2574b1c0e3e"
    "pt-BR"
  end
  language "ru" do
    sha256 "946b51a6cab55a09614d4cf23a46a7fe2c7ca437fa7cad1eac49340a6a4c12b1"
    "ru"
  end
  language "uk" do
    sha256 "ecd8c7bff5f513ee57e99c89dea2abb828331b8bf164cc272ca19d864823b399"
    "uk"
  end
  language "zh-TW" do
    sha256 "5aef782a7e64f7e09782929d41870a34ad31df366366ed924ada12974d048c71"
    "zh-TW"
  end
  language "zh" do
    sha256 "1a3d30f6d82add35b2c4b8ece62cd2f52217c7b2c713db533d9392f56ff1c662"
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
