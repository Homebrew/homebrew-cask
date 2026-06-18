cask "firefox@nightly" do
  version "154.0a1,2026-06-17-21-26-40"

  language "ca" do
    sha256 "7d86f3cb1cb6c75c0a782a3aba26f1976db9525b2f07cf768691a819d82967f9"
    "ca"
  end
  language "cs" do
    sha256 "ab1510255792e6456d54ffa94d26d441bf9c1e6cd4dfc8f69d50b003bc03e844"
    "cs"
  end
  language "de" do
    sha256 "e724c5b26c5d0654bf990f2678ab98a96519ae2d8a93af43a1b66d707880b4d3"
    "de"
  end
  language "en-CA" do
    sha256 "4ed7628b82a69e9d9b35ad3bba46389dd6b4b54ebf3a4d0c175048b64ef5aec9"
    "en-CA"
  end
  language "en-GB" do
    sha256 "c0dac8ad3954e1182031354c1a168afd9d5f5cb900e046a5314131350003b395"
    "en-GB"
  end
  language "en", default: true do
    sha256 "2ba6206250ef64fc26402e07a93ad95fcc830418dc5313cdc22908064e5aaa2d"
    "en-US"
  end
  language "es" do
    sha256 "e1999c3627aec5f5a0b8e942ac2cfba3948d708fceae55af8248fe0e3b95e193"
    "es-ES"
  end
  language "fr" do
    sha256 "abe8ad8ba2aa0921ff8027698ff3e384f168881736c8168fcfe64a72021e84ef"
    "fr"
  end
  language "it" do
    sha256 "879cbbacb84900314d036e6d7d1b494fb5d296064788f2430e4f0b0f030ceab4"
    "it"
  end
  language "ja" do
    sha256 "485005b2bd54b31d62bc880a18e7571c21f53939d3188684f5486de1d643b14a"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "f70ef6b91bdabf3b6095dea12d78861902522296169c8bb76ee701e0bc5f7385"
    "ko"
  end
  language "nl" do
    sha256 "a9a8c6705b36d908225127cde517cfd4a3305da79ba303480002119ab17423ae"
    "nl"
  end
  language "pt-BR" do
    sha256 "8c903460341f398b9d7636bc92f6b2d08ca74ffac705cddedafe804011abdd47"
    "pt-BR"
  end
  language "ru" do
    sha256 "b7eeda58dc532e03af122d6abe557778cd03e0fdb85bec578787459a1dff3e99"
    "ru"
  end
  language "uk" do
    sha256 "7244e4a1d88e45547b913e06bdef04bf0966d92307aa92816b3f36f76abd4937"
    "uk"
  end
  language "zh-TW" do
    sha256 "1edd4cac4b37bd7436531921f6e290dde5b1a1f5542694fb639e8999aae90e8e"
    "zh-TW"
  end
  language "zh" do
    sha256 "7c5946728de0970f30ec9de25c3c12983a113d98faf0824dbebe395a31fa01ee"
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
