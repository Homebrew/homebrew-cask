cask "thunderbird@daily" do
  version "146.0a1,2025-10-22-10-06-32"

  language "cs" do
    sha256 "066c73fd78e8005e2f10e820c35662760fc66160cd75702950fdf1d0c4797514"
    "cs"
  end
  language "de" do
    sha256 "d0b44abab4e200ece9bda60f7cb2cdf2112ff0ecf77ffef5753daef401b478ef"
    "de"
  end
  language "en-GB" do
    sha256 "1c0f2bd777bb66249dd759cce22879534fff7594fa4a7de6a652505973613563"
    "en-GB"
  end
  language "en", default: true do
    sha256 "8d1456f3c7a76d405b0824b7995cf9dfc54f7cbb9cc2e4d389f2b870b0a80368"
    "en-US"
  end
  language "fr" do
    sha256 "e2b6c27e96504de59d6281d16f42a152b267f561235cc52b09ece94888c6187f"
    "fr"
  end
  language "gl" do
    sha256 "79e751ca352498bf904b8a7fb44fbadcd6dc1137de24f757789278bee1202c92"
    "gl"
  end
  language "it" do
    sha256 "208239f5bd34b85be60a0f0a169da6d873c6120a77b301f128ae3469be51994c"
    "it"
  end
  language "ja" do
    sha256 "7046692c8e01cd3911b84473aa5136aba0172ce259ad33ed48f3467c5abf8d71"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "19c13265dde95e0a6ff153d6c1eab54ecf04c4cef1a5aa81b6b76b6e0968d4d0"
    "nl"
  end
  language "pl" do
    sha256 "673da22f19885a10c8bee4a56241e5a67ecaec97243ec85ef7588e1a3db6594b"
    "pl"
  end
  language "pt" do
    sha256 "5d567da7cfac5d8573856a6ffa6680d0c0b16d2ba2a5b376d868d7ff6bb436ae"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "5e6a581d01ce10036e14961c42836d361666b5f3421129fe12cc47f87fe6a444"
    "pt-BR"
  end
  language "ru" do
    sha256 "b5ebba0597d3c168ab03e29288e98b2fddd2ad1553e4a04f25cdc575dc86003c"
    "ru"
  end
  language "uk" do
    sha256 "a1f5385f20f8b6a41ace38cbb38d5896899597cb238a43a57c8646ec8a729bb1"
    "uk"
  end
  language "zh-TW" do
    sha256 "1824ff230b5c2e5b5cb87bea87e97bb1870bf527d5f8f5f7d1fb3ecfc7f10587"
    "zh-TW"
  end
  language "zh" do
    sha256 "0ac130c040646d71c3ef0d184898be30d895f7d9e33ab0211c46a3d78c25a00f"
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
