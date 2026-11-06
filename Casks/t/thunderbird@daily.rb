cask "thunderbird@daily" do
  version "162.0a1,2026-11-06-09-56-54"

  language "cs" do
    sha256 "a745886deba09e2420ae53fa29945e9792db57211949d23a35d82e442b2bc393"
    "cs"
  end
  language "de" do
    sha256 "de520f810248194488eb329b08bf35128040828dce22b922cade9622090e321b"
    "de"
  end
  language "en-GB" do
    sha256 "b66ba31c2f07f7991165e207c427005d60540ff89c063c5b78702767db84c172"
    "en-GB"
  end
  language "en", default: true do
    sha256 "aaf6c53f47624e3b27eb801aae5df5657dea482334649abd37e8b89ed6b89f71"
    "en-US"
  end
  language "fr" do
    sha256 "6da086c2b55e7af6a349361252b69feb5457c34a251a8ac323f0ee630432bf9c"
    "fr"
  end
  language "gl" do
    sha256 "5d28fa8534e75522037bd7b9f8989e650cbc443ee944b9c01562630129931aa5"
    "gl"
  end
  language "it" do
    sha256 "76b1fa519d7f58dd2077f2362da7f6f808c58ed91978ba88797c570d83db77b2"
    "it"
  end
  language "ja" do
    sha256 "c430dc72cccb9678e9c2b305ff1e8ed863c6f59e03e165861ab3a8b15e318285"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "2fcbe95914f07d191a01e7b368b34117ed3e2836806e657aeb5559eaab501592"
    "nl"
  end
  language "pl" do
    sha256 "28daf185f9e959acc6753abd35f79bc2ca59eaebb35725b4620c624141abea9f"
    "pl"
  end
  language "pt" do
    sha256 "0bfa0ac55c533646f7a7fdb9722f32910a81a00000f3445a17e02192d6c2c4af"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "26e9da5bd303f543d18fdf5cc54082a05f7bc458765a6c37d825e84830068a7c"
    "pt-BR"
  end
  language "ru" do
    sha256 "ea058014f87af5e51fd74779c7b4f5933663e65d5fe9185eb1b4fe9a9c578114"
    "ru"
  end
  language "uk" do
    sha256 "98004f92324a85f0eb59b130627d8d654ab57e5ca78cbbf42ab85259d2b59089"
    "uk"
  end
  language "zh-TW" do
    sha256 "eb6db90dbb728bb59d1c775d84f11dc72b2c8a72699899c56eef927720d74345"
    "zh-TW"
  end
  language "zh" do
    sha256 "90e4d3241a842fc29dd92817700c0d3c7f4ce7590815c73aff305f8f75fd7543"
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
