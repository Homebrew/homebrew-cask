cask "firefox@nightly" do
  version "147.0a1,2025-11-27-09-23-53"

  language "ca" do
    sha256 "faed21e5988357b1c885950b696275fbf1e3ab533146c02fdd01ba40277f1860"
    "ca"
  end
  language "cs" do
    sha256 "71a1e5435eaae8cb2aedd6bdbd37a525fd04c7169b6c4dab92426f4eaaedd059"
    "cs"
  end
  language "de" do
    sha256 "af85b63e3660820b64bc579c921e840ad777aa72a957bfc3f1ef9eb04188b8fd"
    "de"
  end
  language "en-CA" do
    sha256 "e0fbbde7a2c8f39c74642576c1ea7df8209331e0c8c27e7b30540e9f346725e3"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0ab87d00ac437b9542b2d5ecc3354e10923973ff752207b66cbfa20e620ef372"
    "en-GB"
  end
  language "en", default: true do
    sha256 "d6844b84e5121c3da52966d968e96f64717c9db4ce7ec3ae015780e79d96750f"
    "en-US"
  end
  language "es" do
    sha256 "4957ce2ad11b0068167fdbe2f0fc249c0a1d88ea66960e6e7dd559e8ccbde8c9"
    "es-ES"
  end
  language "fr" do
    sha256 "48f2003fdb424d0b5fcf32fcd6ceff46267c62c48f431c1fa5dc8330aa0a1215"
    "fr"
  end
  language "it" do
    sha256 "7dfec0fcf9f1be74fdd68776e77a91721ab827b0788aebc1597774ec57bd3416"
    "it"
  end
  language "ja" do
    sha256 "e0f0e93ad55e48bec4da641a275043840c2a9f4bfcafd42d57b0bbb195f86bfd"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "0f47d40e8f5bddb2c7fc704cdda64dc953a45eaf9d728e833deac858117ded00"
    "ko"
  end
  language "nl" do
    sha256 "d3fed51c49294cec04efe581fd8403a55fb1511551050d7b191deb83a3f9ece7"
    "nl"
  end
  language "pt-BR" do
    sha256 "51f4d64d0971d1babccd8aba8b2c5458a79383f5b5641c1a34c1a551e63fddf9"
    "pt-BR"
  end
  language "ru" do
    sha256 "af06b49d2286b173d8c84e948f428382462bf0d47a8c5786615e860043533814"
    "ru"
  end
  language "uk" do
    sha256 "be8072040ee0bd59ef738b41d0c6c88658c75cb7fa5ad76e66e29d9788c5c074"
    "uk"
  end
  language "zh-TW" do
    sha256 "6c1a8d5c67c70debcf5de94897d455f2833573399623c14c7ffcf1936248905a"
    "zh-TW"
  end
  language "zh" do
    sha256 "dd5de24c9dedd1eec4458f5156472472f89d0726564e62fefcddaf7287d96baf"
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
