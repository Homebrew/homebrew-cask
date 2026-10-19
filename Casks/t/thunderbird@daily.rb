cask "thunderbird@daily" do
  version "160.0a1,2026-10-19-10-06-06"

  language "cs" do
    sha256 "f7c9f73cde30b197d5f2dcd21566410361749eec815f26524f090d208faa392e"
    "cs"
  end
  language "de" do
    sha256 "ea2bd1c2de2d3edb8410643f59c7209f28bcbb375de69a99b039ad9178e20f34"
    "de"
  end
  language "en-GB" do
    sha256 "f6d6b524e43d7718c3c0bd44c516a6bdc2a08675c65c68f7ed753f4fdd84e0dd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a9c5000c1ba146535a636306f8b9e968dc5c7a39c223149ac2efa381e19d8d5f"
    "en-US"
  end
  language "fr" do
    sha256 "8210763dc3e9e90aed7f8d18b2f6c4b6c5f43e2f2539f20d90bfbfc7c12136e1"
    "fr"
  end
  language "gl" do
    sha256 "543ebd9a2f8bda9863a3edaadc287c216c5201b8b24849f3efd74e323a9dc7d5"
    "gl"
  end
  language "it" do
    sha256 "3071be20b5b061ac1aa4e04fe5cef7934231f0f9cd567f850a9374f32b9b38c1"
    "it"
  end
  language "ja" do
    sha256 "898b9a880cef04f22812995e382f5fa92594565fe889eded0889756fcca873dd"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "ffd5ad6c4fad31550ac13ea9a1dbe2312150a23f88264d84c1f0cefe21924118"
    "nl"
  end
  language "pl" do
    sha256 "dde7aa41dda59efca09e4ea828c76f37b0527a8d31424907a1185cb604cf0500"
    "pl"
  end
  language "pt" do
    sha256 "77c9ace3127863d69df710d34f6f824853528e339389c9a50eccdd9384245fd0"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "17c7da570b69aba1ed84243923368475a0087cad111cf2368551e1ffbbafbbed"
    "pt-BR"
  end
  language "ru" do
    sha256 "0786bf41500dbdbb173711c7d279e1f25f26a725ed38a4995a8298f2d779f69a"
    "ru"
  end
  language "uk" do
    sha256 "1572ca3eafce90d028179a496a49965baa1d75fe067754da7dc99456dc69a53d"
    "uk"
  end
  language "zh-TW" do
    sha256 "a16e4b62b953c2e9e61bb3407d35ec0091d502557728ace25648b74521ffbd5c"
    "zh-TW"
  end
  language "zh" do
    sha256 "424ec6fe9248d74f016b7772dcbc144f6d09df33cfd3e48d9934451d47f3762b"
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
