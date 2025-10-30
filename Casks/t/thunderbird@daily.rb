cask "thunderbird@daily" do
  version "146.0a1,2025-10-30-10-48-13"

  language "cs" do
    sha256 "fc2489c4a9d553e69f75e53c3a5f0f487c9a50d82af12a2e7fd37ddf74df5dec"
    "cs"
  end
  language "de" do
    sha256 "4f9e7af265a8b33886fae86de93e9d33eba5bc46975b43b5e653e04489a76900"
    "de"
  end
  language "en-GB" do
    sha256 "28f9809b2585de05a4319a14e7cb6f83ab78e13165dd9a2d4abc0053f306c3aa"
    "en-GB"
  end
  language "en", default: true do
    sha256 "82c42f41462c2c4abe6929138b4daff25ace75a21eb7460a57258e59051e973d"
    "en-US"
  end
  language "fr" do
    sha256 "204399f5710bbfa01948ea23c7a26f0960f4e678c48ff4ca004a1d9ceea28d03"
    "fr"
  end
  language "gl" do
    sha256 "4c0963b4c8e60e03eab65fdc9a0d2bd77947574031f4d2b762a3cd16b377949a"
    "gl"
  end
  language "it" do
    sha256 "1c3ee35dfca7371d5bbd91daeb35addac0276adfb2a083bcd5ad1dc8a7b6eec6"
    "it"
  end
  language "ja" do
    sha256 "a9336e692cedad68c9bbafd9bbc52def26d66b2b7237224cf3abab83c5f70d2e"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "c9689de6c0b7408bba9176c4595b0f975fa5905eb8cd58bd3bcf209118714f4e"
    "nl"
  end
  language "pl" do
    sha256 "31fb0f9684f8591787bd61e9c11595a68944e498c6c48afea78ddf557ec6f2d3"
    "pl"
  end
  language "pt" do
    sha256 "aed3d139a2012921547ec82e28370964f2ecb05e4b232292ae3e0f78313a474b"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "b692312959d171f8132497a269f532826f00a3d938121f69807dad82478e88a6"
    "pt-BR"
  end
  language "ru" do
    sha256 "330af459988899da403b85cf0852fe227b5cdf86cef77903ec5c09cbb0ce5bca"
    "ru"
  end
  language "uk" do
    sha256 "d9d701b684984e0e7f467e9a2ccf75ac6f4d6d3f17e2af5b260ae5521547854a"
    "uk"
  end
  language "zh-TW" do
    sha256 "4729c5e90f102dad23bf18c5cfdc2c77f2f238189d546408320d1b512a7aefdb"
    "zh-TW"
  end
  language "zh" do
    sha256 "dd28780986acc14783f59776d92d3660d05017b4cac8bdb190ec541957ae2872"
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
