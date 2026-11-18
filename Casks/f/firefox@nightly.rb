cask "firefox@nightly" do
  version "162.0a1,2026-11-18-09-36-14"

  language "ca" do
    sha256 "d45b70b5639332ec85a7d1ab8a5265d83b0b457d8b5e330258be4ce0b8a33f69"
    "ca"
  end
  language "cs" do
    sha256 "6ccc3563feb909e26291ce1025766a164b1d6c497f0ef2df75c250df6985877f"
    "cs"
  end
  language "de" do
    sha256 "7aee1d9a95452f1d3e4d37ac5a4d0c6a1a201d9b6750fd84584006eebcafa6e1"
    "de"
  end
  language "en-CA" do
    sha256 "5bfba9e629ad2c6f730bfc5d0bd091f0ec2faf7f656fcefcda1d2acc0bf2e392"
    "en-CA"
  end
  language "en-GB" do
    sha256 "085d8b091491eca45b291d8b40b1f07742a1b0cd668f33af1c606ad2b60e8f15"
    "en-GB"
  end
  language "en", default: true do
    sha256 "bd0efc165cc02f1cc0775d6f701efd3b1c340fbcbc06dd79691a27cdc8528863"
    "en-US"
  end
  language "es" do
    sha256 "a2c8860445a1109f9597bb6aa55fd820ee2650841877ee8b1c22dabb7eae1f2e"
    "es-ES"
  end
  language "fr" do
    sha256 "2b1fdcb7a2e753497c44d96e52d7c6a1c7d8edc0f9d4f6d82f42fe36e8ba1c78"
    "fr"
  end
  language "it" do
    sha256 "b6a23633ecb649b3e19dca401e2719b6526f4810b8ef34d1d7871e67691ecdf8"
    "it"
  end
  language "ja" do
    sha256 "de072491f6f06cb10a04e00bb1869c0662d88bd5d267c7f775069488f4efe1b4"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2da48b60bea1918723ff334739657af67142f5b09d16ff22557f4632e3614b0c"
    "ko"
  end
  language "nl" do
    sha256 "6a83b0a7743dc63e00b0b047f847146ec3e063ce142a3e810732300ebfb3f44e"
    "nl"
  end
  language "pt-BR" do
    sha256 "d235cd9d9bc2eb43ea3d9f52d4405e94c3e4144e2bdc5ac1405379288d28d1b7"
    "pt-BR"
  end
  language "ru" do
    sha256 "409df0b2116436a636cd958d14fab34cbbc1a15169df2ea93ca96d5e7e609d8e"
    "ru"
  end
  language "uk" do
    sha256 "553a84e9b6e7e4b4183bc9881278d8726416a2481c9cf26ee60b0c3816d3168b"
    "uk"
  end
  language "zh-TW" do
    sha256 "b00337512de9afb5ccd9b5756c9ea677986aca07881ee93df9c00bdaf4abf26f"
    "zh-TW"
  end
  language "zh" do
    sha256 "54c98bd10b8b812a15ee44fb05a041bae7027241e5829cfd3e927ec87f7cbb00"
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
  depends_on :macos

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
        "~/Library/Preferences/org.mozilla.nightly.plist",
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
