cask "firefox@nightly" do
  version "154.0a1,2026-07-08-22-00-03"

  language "ca" do
    sha256 "c143f2902e242f3b221aa82753a00219eff8c2686936134a3be634bde4f52d74"
    "ca"
  end
  language "cs" do
    sha256 "5f06f9e1e80c891ea07833be5157ccff700967e5aada49b8b9b2867195ff8b0b"
    "cs"
  end
  language "de" do
    sha256 "54876b0d8b8468e6e00fff7f16bad0d139e4879a716b38cfc92ca67f19cf7dae"
    "de"
  end
  language "en-CA" do
    sha256 "d8e0c3817253b4ad82aaa80e79b7d71b5bdb4b5d468442dbc061681919700fea"
    "en-CA"
  end
  language "en-GB" do
    sha256 "ec6e92cd2d0a56a670fe9c06185babc96f50ea01c2fa7a2ca27207ac995df8ad"
    "en-GB"
  end
  language "en", default: true do
    sha256 "966dbd017714ce7937ba29a65ffb9c5fff20fe32fdb295a41049bfcbcc52a128"
    "en-US"
  end
  language "es" do
    sha256 "48236b20e39cf9570409b34df864c2f7fa5cfe90eafb72640028da8d137e8d85"
    "es-ES"
  end
  language "fr" do
    sha256 "ae9c7a366383f4d6809bd183ec6fe1dca12e8d11dc15849175f9bc31d32d979e"
    "fr"
  end
  language "it" do
    sha256 "fb1dbdb07db63c9e6b83db47c9ada125d1f389101245912fa2dc6c7a1f51aa62"
    "it"
  end
  language "ja" do
    sha256 "715824afed8debf48affa3f91394e2e4e0782ca621ee08b05cdd7bf4eef0c017"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "c2717bd73e43df666989e8cce852dced937d08d2b556327c7b24563e8ebc26e8"
    "ko"
  end
  language "nl" do
    sha256 "fef1398dc80ce09f1c63fcfdb8485949ce065d7631db53c15e4bb1f308042ff2"
    "nl"
  end
  language "pt-BR" do
    sha256 "e09f4af77951fef11841da4a485d5991cdb82c616b1034355bad4f2c5c67d966"
    "pt-BR"
  end
  language "ru" do
    sha256 "b4c6f676e9b8099812a1d8ac3658612db8a6cc6c10692ba18a2183895efb07bd"
    "ru"
  end
  language "uk" do
    sha256 "310a94959d750dd0851807a50f1504f0fef446adb3549a3b38835842f0613080"
    "uk"
  end
  language "zh-TW" do
    sha256 "ed8319bdea19886f572c6d7170b7803a7f4c09356b6ed82f6da5274bfbf00fd3"
    "zh-TW"
  end
  language "zh" do
    sha256 "70f3e30a914223e1418fd0ceed793f497a85b6f297ee7dc3073760443e826664"
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
