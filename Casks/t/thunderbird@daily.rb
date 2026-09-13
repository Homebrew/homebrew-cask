cask "thunderbird@daily" do
  version "158.0a1,2026-09-13-10-14-56"

  language "cs" do
    sha256 "a5b7a8fa56612d087b18e916c91f6a56c16a438d63b2a3c77f669bc96969192d"
    "cs"
  end
  language "de" do
    sha256 "aaea6526507eb5929ae460a69fa27010ed4a57070a3ccb0b0764202fc172d559"
    "de"
  end
  language "en-GB" do
    sha256 "90504d95d61ce68f9787aabcab143bea562f938a7fd555384260afb969ccaf37"
    "en-GB"
  end
  language "en", default: true do
    sha256 "842fe2b0e6144544bf50fb75053b171a9a5c2e1f0a790b75d669b8d51872f487"
    "en-US"
  end
  language "fr" do
    sha256 "cd0403835f3c9c4ab48d85a8fed8a8ee3e3f8a1b675cc822c7ade5a541b2e5ed"
    "fr"
  end
  language "gl" do
    sha256 "41750ee11eb41e59f9298044f5439d60cb1f721b8080c3c902189e6b328c1ce8"
    "gl"
  end
  language "it" do
    sha256 "1dc948a5b7aaf15736c47d380eb8d5e3c508a206998e0541be24bebbdc9e625c"
    "it"
  end
  language "ja" do
    sha256 "00513b9652340860ea6bd5141f95ea0ff39cf5451a492590e44db2a2a75d60e9"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "a09a219596456e2c363af5494afb19b82638fc1ef66abf76ee2cbd0908971352"
    "nl"
  end
  language "pl" do
    sha256 "65fa9d26b57666d10bf1850813c0981dba7c8439f2ea0c4e220f7265f6143f40"
    "pl"
  end
  language "pt" do
    sha256 "623104e59dd8815bd958ba39c68d0df538b54f0f55bf6919f303ba03a87e09ba"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "686a6414474d3692b057715679ebf9cc384dc2912f695abed6a3e519bb009c67"
    "pt-BR"
  end
  language "ru" do
    sha256 "4674bcbc7c6d0ac3ea0081d7e5718d05c6bd1db42009d40079a5236d9051f286"
    "ru"
  end
  language "uk" do
    sha256 "dbce408e3a5a72a6cc35a1152a87ffff7df8e64f939921ff26dd003e059cb852"
    "uk"
  end
  language "zh-TW" do
    sha256 "fa5b676252f9f44c9c7e71969f21a306cec4f532ee25dfa1f375f2b08a9ee731"
    "zh-TW"
  end
  language "zh" do
    sha256 "3db9d52d6d8d5468df3112208c143f7033c41997bbeaa187c37dc5646f67f48f"
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
