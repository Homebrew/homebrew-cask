cask "thunderbird@daily" do
  version "158.0a1,2026-09-17-10-25-08"

  language "cs" do
    sha256 "10163f66485fec48b0ecb26546dbe71d3b7d3b6cc63f5671f73806e0259f6a23"
    "cs"
  end
  language "de" do
    sha256 "c13913075773530249ca1247a4ba6f43222774e2db2b9583dcfc3bf726ea327a"
    "de"
  end
  language "en-GB" do
    sha256 "7a6fbfc719f780cfcd639319dabf4df3066139e6cf4f8be997d9ef30ea2b9ff2"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8bf1b635744ba7587b6f35b16c7c91b271e170981448077fb6b503f161c57b4e"
    "en-US"
  end
  language "fr" do
    sha256 "1aa7c964aea113c87f93f31b4594b8099f2e7fe72b2fc5be316038acbd50c29d"
    "fr"
  end
  language "gl" do
    sha256 "1478cb594d8b790972b76b9363c1c6c8ae67f06b8826600d65f1dfd2e941f167"
    "gl"
  end
  language "it" do
    sha256 "f0605695af84e80906400f6460c418c7f208bc8ee884ecc31e8c2d8ea1d51157"
    "it"
  end
  language "ja" do
    sha256 "0d7496202be0d9aedf4bac27808838e221063b8e9dd3ec13a17065f180ca98f4"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "84c536e0145ef8816dff2ffbb8524079735ebccc63e4f8cf97332f4261aabefa"
    "nl"
  end
  language "pl" do
    sha256 "76a595c4666660b1203bbb39c084c250c822dc54cc8830715a77b05deb2da290"
    "pl"
  end
  language "pt" do
    sha256 "f27c0957494152941b92bbde1f637aedacda269c51be4e9e9448fcb5024d21da"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "c9a55f20cc016fdee7f72f30a410445fe7c835109396bca6d1fd364200dfe6a0"
    "pt-BR"
  end
  language "ru" do
    sha256 "7c46ffda792e761b5bfc7486215cec40bee28122ca2a64504b6de044fdfe6433"
    "ru"
  end
  language "uk" do
    sha256 "77b5fdde64480452e95060ccf81675642dfa42c10f7e584abad5c4b906423815"
    "uk"
  end
  language "zh-TW" do
    sha256 "a5f3ff1e2104950540866dcfc8233ae92c35d97c426b36841f82f27b5becbb2e"
    "zh-TW"
  end
  language "zh" do
    sha256 "907ce442b2cd80e72e821aff45434c8cd7ab729473b89737ab6030a265e6a07b"
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
