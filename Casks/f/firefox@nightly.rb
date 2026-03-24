cask "firefox@nightly" do
  version "151.0a1,2026-03-24-00-27-15"

  language "ca" do
    sha256 "8c9766b69a3612cd67583df330f699bd7d31ad8be810457111ce00dd74e74dd8"
    "ca"
  end
  language "cs" do
    sha256 "e4ee90deb69b429f4a6542a5f3ea8046d127fb1d664a5198be0ea60f45f13b3c"
    "cs"
  end
  language "de" do
    sha256 "36518d1b8f30a601a0ac6078295fa8d73960e1e8bc6c0c417114b45936b0fb1c"
    "de"
  end
  language "en-CA" do
    sha256 "dae4a5e3024402ee5d4e2b8a74201a9251ca7f8c50be6814a4e28a380b9e006a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "68a4fb3850deb2debe5ed4436538686151906593e2586fb013be3537f47eabd4"
    "en-GB"
  end
  language "en", default: true do
    sha256 "6e865ef31e23cedcce3674f7a20ea9e2b0f2c7fad5b754f21d9caf8478ee7f8e"
    "en-US"
  end
  language "es" do
    sha256 "162ed7132ca6e36bde897721a8ffede1a36fbe31719f2af74ebdbc4ab7a591de"
    "es-ES"
  end
  language "fr" do
    sha256 "e8d728d9db0e257362a5ba3cb68f21c0785a40afd20bb38b3173f1b6f1888c50"
    "fr"
  end
  language "it" do
    sha256 "e6bb992cc327d9ea4b8fae57bfec7243b6a940fcf81b4e1536233da0191a7a54"
    "it"
  end
  language "ja" do
    sha256 "b783708d0efe2b93b184a45e8430a379f036d80eb929c5729fff94c7ca1765ec"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "2853b5aff968ed260e5005892a67387a4472bb0c543c0ad5504acdb2add7d85e"
    "ko"
  end
  language "nl" do
    sha256 "b507d37dae5a3b4c17c7bf6fe9d66c58c265d7d47edddc11711b1fabdfdf78a0"
    "nl"
  end
  language "pt-BR" do
    sha256 "4669ead539662000088e856e7d728631e29f92f392eb7437e0ec932887947511"
    "pt-BR"
  end
  language "ru" do
    sha256 "fb9857263b50f5711fd273945c17a60f1fc2127aa61b1f21badc122e5c99f230"
    "ru"
  end
  language "uk" do
    sha256 "2ef7f86e6f12741da1b6cf66b9e4a04c2955e3e59abf77dc84d8fabdae5d653e"
    "uk"
  end
  language "zh-TW" do
    sha256 "690d4be6795a9ff6f25982fb17b2818a47309bb47c937ac22844f0aae43224bc"
    "zh-TW"
  end
  language "zh" do
    sha256 "ee9708159668ebbc856e61786d1b1189f1b8df5ec04dee373091f9d757ca2d53"
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
