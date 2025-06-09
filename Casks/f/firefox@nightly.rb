cask "firefox@nightly" do
  version "141.0a1,2025-06-09-09-54-49"

  language "ca" do
    sha256 "c860a176b3a326d5249375733b0d2fe69559912c73199bbc1675399a193a2cad"
    "ca"
  end
  language "cs" do
    sha256 "fd51f182f38ccac4b1402b19c9b09e5a12a272a2243d4164a2a5bda2f215a15e"
    "cs"
  end
  language "de" do
    sha256 "e080613736b5cc9edb51c5f31ead4590f406552aa50707c6ed3631e6a28231cb"
    "de"
  end
  language "en-CA" do
    sha256 "d9703dc395bf545d35c2f5d11b73c9f8cedf200fd1d301bbc86f190f939df644"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e0ac6f0bae0aa42feaf3d29a80bd0ce9cdbca4ffa6b4496191549831f62d4be1"
    "en-GB"
  end
  language "en", default: true do
    sha256 "92237b5b74119f197e886f58bb3948da9d68dc28222406f0b3b8c70651683a81"
    "en-US"
  end
  language "es" do
    sha256 "c4d2501855300ad5a3c8de807cee1153f051aebd0a62b248cd8638783f8e7858"
    "es-ES"
  end
  language "fr" do
    sha256 "17f4af100455b7a1a397b53bb2c266703e0f106b9a7b5ab86bbc9e4fbb0427e2"
    "fr"
  end
  language "it" do
    sha256 "c0e925ecd93a2021db612c09577bf69089332fde4d18e2b2b118acece9e75f15"
    "it"
  end
  language "ja" do
    sha256 "30e9f21786666e7bf323de8ff5b17d957740214a02634a9f9711beec7eba4ad8"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "38500eaed052102917ddad170b388bd6e7d6440bbe5027bedb91113dd9007369"
    "ko"
  end
  language "nl" do
    sha256 "51f7338d0ffe55bea6eeb7a153582e6825fa85c10ca5424c54b6da6e92dc4457"
    "nl"
  end
  language "pt-BR" do
    sha256 "1c1c23c471fa7b75ab0a8be173329171519dcb8957ec5956fd8e201b62cee8fc"
    "pt-BR"
  end
  language "ru" do
    sha256 "891c734cfa7a3d73077d16f1dcaf40edf5e17f4cbabd9ac4ca8dff2f5dd3cb57"
    "ru"
  end
  language "uk" do
    sha256 "f6609edd6bcdbdc521e6484a6b8d7a54f85013a9bbd57441f478817e7f306cf4"
    "uk"
  end
  language "zh-TW" do
    sha256 "84f128df88065f6570a74ca07b8650d5575c7fcf975d114b87b41be5e0a9b43e"
    "zh-TW"
  end
  language "zh" do
    sha256 "b8951a11f77b12a8f3acd1d4ce791dc78f8dee2c45de77329934abd49117f0b6"
    "zh-CN"
  end

  url "https://ftp.mozilla.org/pub/firefox/nightly/#{version.csv.second.split("-").first}/#{version.csv.second.split("-").second}/#{version.csv.second}-mozilla-central#{"-l10n" if language != "en-US"}/firefox-#{version.csv.first}.#{language}.mac.dmg"
  name "Mozilla Firefox Nightly"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/channel/desktop/#nightly"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    regex(%r{/(\d+(?:[._-]\d+)+)[^/]*/firefox}i)
    strategy :json do |json, regex|
      version = json["FIREFOX_NIGHTLY"]
      next if version.blank?

      content = Homebrew::Livecheck::Strategy.page_content("https://ftp.mozilla.org/pub/firefox/nightly/latest-mozilla-central/firefox-#{version}.en-US.mac.buildhub.json")
      next if content[:content].blank?

      build_json = Homebrew::Livecheck::Strategy::Json.parse_json(content[:content])
      build = build_json.dig("download", "url")&.[](regex, 1)
      next if build.blank?

      "#{version},#{build}"
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Firefox Nightly.app"

  zap trash: [
        "/Library/Logs/DiagnosticReports/firefox_*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*",
        "~/Library/Application Support/CrashReporter/firefox_*",
        "~/Library/Application Support/Firefox",
        "~/Library/Caches/Firefox",
        "~/Library/Caches/Mozilla/updates/Applications/Firefox",
        "~/Library/Caches/org.mozilla.firefox",
        "~/Library/Preferences/org.mozilla.firefox.plist",
        "~/Library/Saved Application State/org.mozilla.firefox.savedState",
        "~/Library/WebKit/org.mozilla.firefox",
      ],
      rmdir: [
        "~/Library/Application Support/Mozilla", #  May also contain non-Firefox data
        "~/Library/Caches/Mozilla",
        "~/Library/Caches/Mozilla/updates",
        "~/Library/Caches/Mozilla/updates/Applications",
      ]
end
