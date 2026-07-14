cask "thunderbird@daily" do
  version "154.0a1,2026-07-14-10-19-39"

  language "cs" do
    sha256 "5c14d920b1aef34267511feb37d37823d27db898ce334d5b1840a42dbd5b995c"
    "cs"
  end
  language "de" do
    sha256 "008ff280beca29dc2c2ade63237d3aacb0108484f06c79484a5ee9650ffe5d57"
    "de"
  end
  language "en-GB" do
    sha256 "870c7dca265b2097643422bd90939d7fd0f04212aa8c8410f9f9afa697d52fb6"
    "en-GB"
  end
  language "en", default: true do
    sha256 "0dabdcaf04039f4d73477f50494615aaf37682464020ec251e7d1381caa94334"
    "en-US"
  end
  language "fr" do
    sha256 "5710d6eec1fe8a78cdc23439b019f3a3b3fdf78c558fe5f84adaf4d37360da02"
    "fr"
  end
  language "gl" do
    sha256 "5ad0f18cef968787615966b50bbf11570f5b9e06eaa9a0952d04531f92074fcb"
    "gl"
  end
  language "it" do
    sha256 "9d568d1fc989b1df478e6497706aa5d9ea4c3d97308fbbc6c8edc47f6da72922"
    "it"
  end
  language "ja" do
    sha256 "afd675a60999176d33ed5bd24e3bb93a15acca4920a0db61664b8cee66b0bc0c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "a3af6a78cec9de152e596196aa129451a01b2a6a4bd69ac53061b12a73f4ca59"
    "nl"
  end
  language "pl" do
    sha256 "2142bc5f740d8d60ea6b60eca732338071ea7280b1f7469a86b38ee8c6326d26"
    "pl"
  end
  language "pt" do
    sha256 "315ae2d6201ffdfb3c8b1e6639d9c5a2f1c666b8952f926f41edd4891d3a3e11"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "b3d687e08e8620dcd93c1b9996ca727a0138ac69ffb86dd45c896371ef14e3b8"
    "pt-BR"
  end
  language "ru" do
    sha256 "9aa615459da4149e4d46d06438cb53c7bf5816b76fcf495e6ba268ffab53ab86"
    "ru"
  end
  language "uk" do
    sha256 "2f135abb0fd5a49bf4762f7ca0fcf2f8f1aa5001c9f8e2caa4fbb97c11177a49"
    "uk"
  end
  language "zh-TW" do
    sha256 "efa42fc735ad7bd721eda05b4c745f1dd1a46103c207e3087388c4c2e6b1fdea"
    "zh-TW"
  end
  language "zh" do
    sha256 "0b0f5783689c5e47072a453f8e28f34b8feb56a3e47fa053f9b5960bb161f5c9"
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
