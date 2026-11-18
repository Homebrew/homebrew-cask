cask "thunderbird@daily" do
  version "162.0a1,2026-11-18-10-09-49"

  language "cs" do
    sha256 "a1c275bec99e2b263b28bbb502e6cf4abebddd6243889b4419a8a64f614050b6"
    "cs"
  end
  language "de" do
    sha256 "b697e9881be17e2da44f8d77ea32d128c812835f50e6e2425c52c2fd20ffc952"
    "de"
  end
  language "en-GB" do
    sha256 "9fd5b98f7311cca97937120d022264453925d5bb77f997d436e5c717edc9a76f"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b4d9e67f8e27bc76718f6fc6b0ff08f96dc67060f22cca978f4732153ce5e365"
    "en-US"
  end
  language "fr" do
    sha256 "99aa2939404746ad6c0c44b944d025ca9f91bf5a17006477389b3c91623681e8"
    "fr"
  end
  language "gl" do
    sha256 "091416b673c604b9bcd8ca6e5dac1794d594104fb4924cb4e09b16faae94b597"
    "gl"
  end
  language "it" do
    sha256 "3efd8a5eb8486807c3470e217b7fcb9251b30a1738b81ee06c6fbed258343f04"
    "it"
  end
  language "ja" do
    sha256 "67d37ea45b4501ffc42ecaf655f813aa4004e73e09953c6f2732cb9d715d3e6a"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "fd348f3187d3deafde60752d3de18b60f999caaaa9a11f2a0f66016716245428"
    "nl"
  end
  language "pl" do
    sha256 "bd3b3bed14ab112a68c9896831da281bf31ddaba201d5be83a3d72ca3872086e"
    "pl"
  end
  language "pt" do
    sha256 "f1d505447111e96b2fb2fc7f100ff9a81779c218daa72e6a390eeaf38106ed95"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "aa20f4cb00e0b5f2a7e4d0fdaeb3020e7442e4f1a03adeeeb76c6d1706010a5a"
    "pt-BR"
  end
  language "ru" do
    sha256 "eb8dcf08835081fca21d2a94e0a130869c9c87d529c560a4c54d4798de4e6a89"
    "ru"
  end
  language "uk" do
    sha256 "853730172174390ca0f65fb9ce6150d553699f0588d26fe3c1a42d301e09fcc8"
    "uk"
  end
  language "zh-TW" do
    sha256 "995de8c305b30005760415c849628bcaf5389fa8cb651dedd011fdc16e6feb4d"
    "zh-TW"
  end
  language "zh" do
    sha256 "f31f0de8bee0942e4aac9369a8d4e653c6d758b11065a4f67fc71a23ad72c3ab"
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
