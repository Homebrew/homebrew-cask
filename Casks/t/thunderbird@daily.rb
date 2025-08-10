cask "thunderbird@daily" do
  version "143.0a1,2025-08-10-10-33-58"

  language "cs" do
    sha256 "2a411561d657bc620c3fa18e9c5f99c44ac1432bbea388aaa8ef2974523b68b2"
    "cs"
  end
  language "de" do
    sha256 "41f88ff70ef74d8e72ebeaa3140a67799b539b056fb40aca66b80178206c09e0"
    "de"
  end
  language "en-GB" do
    sha256 "e94292728278ffa376f9b9c18dae78c7c024dd79ff7c2f132a2843bb6881e4dc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8ae9bbdf44e0575e2e0676103ec83e9475ad8d7ccf19a6de04ddbafcaa52e4dc"
    "en-US"
  end
  language "fr" do
    sha256 "352e225a1f7610fe731c5c08a916adf4dec0525ce6be0be9970efdd9cf14cd74"
    "fr"
  end
  language "gl" do
    sha256 "f9dc82bfafb45d49555d54e27bdea94dbfad768f20f3487625680b23fcc549a3"
    "gl"
  end
  language "it" do
    sha256 "e2b01e15f8802a31e8387af85aa80b1788fca134aafe4b53e9edbeacdb7b9ca5"
    "it"
  end
  language "ja" do
    sha256 "bf6a1726e7ee7cfb9b50e5b6277896cf513a2210d8050b729d7e470d776c7728"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "222d6083ae51a390739ed6a03f618a6ddb93a157c8cb251d904283d29293103e"
    "nl"
  end
  language "pl" do
    sha256 "74ebf3e5c37dd5956398f0cfdbff7a38b9c1da68b803f1d87537dcc2e4c39f4b"
    "pl"
  end
  language "pt" do
    sha256 "cce1db29b7369bf12161c1df48d6909432ad78ac2c394dc69a6464aa1aecc7fb"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "589c6ccfae267f575a7aebe1cfe364789217ca6a560f81a3a224ba3546fb5e32"
    "pt-BR"
  end
  language "ru" do
    sha256 "c155bfba864b843fbee9769d7298421b7ef20b79d2b8bfa2e41fc7897962861f"
    "ru"
  end
  language "uk" do
    sha256 "4401584045cf5ea926d2a507b6448a1c34b0bac1dc3efd80dfc07c865b19712e"
    "uk"
  end
  language "zh-TW" do
    sha256 "d963e07a0cef66919d9a6804bb25dd7596b79785a90f8898761049e2de070885"
    "zh-TW"
  end
  language "zh" do
    sha256 "a8252b44d0b14eb2c304e602bfe208d9ea6f0cd3278e1e52d4459f8c20cdf92a"
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
