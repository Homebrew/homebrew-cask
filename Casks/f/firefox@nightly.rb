cask "firefox@nightly" do
  version "154.0a1,2026-06-23-21-53-47"

  language "ca" do
    sha256 "904664194c7a82cdaf02162fa862b44025d21c4730801088677dbe150f253faf"
    "ca"
  end
  language "cs" do
    sha256 "2a48716399d84bbc1bd2b82cc5f1d2372cf3ed710ab419ad1c452491dd30a444"
    "cs"
  end
  language "de" do
    sha256 "47d501e0415223b530f8cc72c007dd5832f07d776109fdad84ab2ee0d3f338ff"
    "de"
  end
  language "en-CA" do
    sha256 "98f30848a0af1edb0c2ef7de2b32475317592d49ef7dd0ce8ff3eff046d22f48"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a5d044dd18f67a270b1d3c2a3bdf2df27378b841f0f9cbbf8f637a1c53ebc1c7"
    "en-GB"
  end
  language "en", default: true do
    sha256 "720e1996df503d42e8fed3ebd6ee0f9be90ca2d5a1aa38909dd7ecd0718c9558"
    "en-US"
  end
  language "es" do
    sha256 "26f4fa7f4097c925b7b7c68abe4d81fd8da30b9f6b8852b55e03ef0fa4d8a52e"
    "es-ES"
  end
  language "fr" do
    sha256 "7af4a99c6789c91fffbcb43956667caef10a245578bea6f1f487e527724d3ced"
    "fr"
  end
  language "it" do
    sha256 "e9d2b4d109e988cfe5037cba28e13b1a487878ef0bd4cee993bf37bd05f5bdcc"
    "it"
  end
  language "ja" do
    sha256 "2b782a4f1b6dc5c72bc4b5a49da23ca119353197b3cad97871a15f04162e2e2e"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0d9112db0b80cbcfd0cf3b741157dcb76b5b7679b0ea9bf152300db10e72afda"
    "ko"
  end
  language "nl" do
    sha256 "3b66c5c9569c5bb560b57bb5cd5a50c1ce7c1a75bfef75fec2db7fac40017b01"
    "nl"
  end
  language "pt-BR" do
    sha256 "d38ef6e4e875af23e25a74a7b19292df943dc38e63b5e893080c9c8c5c61420f"
    "pt-BR"
  end
  language "ru" do
    sha256 "dae729d20f81f2d2ad0d80117925412397ec80b87ae705bce6020972ae83b302"
    "ru"
  end
  language "uk" do
    sha256 "74b489aebdafc94aaf94bd17b91e141315aa770bc253707d06ebe569de7a558e"
    "uk"
  end
  language "zh-TW" do
    sha256 "4bee4277da8a3e0c3a74f670bc3796b50f4f9f5e9ba3fefddfb95a2b52d11553"
    "zh-TW"
  end
  language "zh" do
    sha256 "01c9db7ef3fd9bc969ab642af5276b31d5f07f46ef75122d9ab300a9fef452a6"
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
