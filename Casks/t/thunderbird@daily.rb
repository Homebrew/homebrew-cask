cask "thunderbird@daily" do
  version "141.0a1,2025-06-09-10-29-48"

  language "cs" do
    sha256 "5d77c305ca4d2bb576dc7310f1dcce7ea3ad0d71b00506693177a55032a16f1a"
    "cs"
  end
  language "de" do
    sha256 "4d8551a60587eba6026357c8a9ec8fa559b6440d8b81adb16f30fadcc3b08c45"
    "de"
  end
  language "en-GB" do
    sha256 "1e85135b45ad7293c67c09a58d3aaeb43758cf83460c9850ac19fa23d4faa2b1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "167cde478fa4d5a392f965994f889aa66f8ef56b91fa0ebdfc4b69f9141479e5"
    "en-US"
  end
  language "fr" do
    sha256 "bb72734a76c920b079dd4742119a46d3cb6493015ea1e1f68a8801f387bd3068"
    "fr"
  end
  language "gl" do
    sha256 "42d65b9d75002d389c1eb585f2d75a24e6405ae3d773145a23bc48b870e32c7f"
    "gl"
  end
  language "it" do
    sha256 "083bb2b0e52bcf1db749fc6f119a72777d7773861ea4e220d33e2c8e9b4cbe2d"
    "it"
  end
  language "ja" do
    sha256 "ec044ad08ffb30b37bf8470c44686db4a193be34622fc484dc5ea540c0d47d4c"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "1ad5d91a7b66bfd12c9a24aa85794b2b97d346f980ecaabe32fc2c144610a1ad"
    "nl"
  end
  language "pl" do
    sha256 "c30d5717a343b498fa5f520bc912a4dff23acfb2499d2071dfe0ae150c0cdaf5"
    "pl"
  end
  language "pt" do
    sha256 "abee4bab44571ee65e77677fa7f46e83c60f2564d54fca918acbcadd2d6a98da"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "636fff691aaef80ba32069cc4e2e029623a86faccacb633b3d3548e6a9dcd211"
    "pt-BR"
  end
  language "ru" do
    sha256 "450a966303189209249c4b121574c6520354525b7466d74bbd094d93bd487d26"
    "ru"
  end
  language "uk" do
    sha256 "aa44f216db1a3dec1f29667824be88a3eb56c54e1557d19c4abba5b34bcc76ea"
    "uk"
  end
  language "zh-TW" do
    sha256 "2112c52ebb5e43035bed0e903fe07c39b90b765bb7438bfed482c69f9e23a1e4"
    "zh-TW"
  end
  language "zh" do
    sha256 "4c6b9bbe8129019ca2eaa2c750637c338cccbc9abe3ccb65d31e47dfb2e7d916"
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
