cask "firefox@nightly" do
  version "149.0a1,2026-01-22-07-28-19"

  language "ca" do
    sha256 "dacff78467c844c21fe469d16377ea251b639913855b6ff76eab5440c9829c9b"
    "ca"
  end
  language "cs" do
    sha256 "a875c845279f6b4492b9e359a4df9f308c9fd39ea2fd8b55ee0db74c573be2a8"
    "cs"
  end
  language "de" do
    sha256 "878a1dc8ca7fc210252209afa88b30f9f6cb880f04fae97cda6d22d3579fff28"
    "de"
  end
  language "en-CA" do
    sha256 "4a489d8fee7f54ca4b78c528137f2fcc458de036147dbabcd38f0d723bb23f8a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "e2653ec2da794b9ce63c60b0150fcf60d9c151225e35addbbff1596dc97d21fc"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9d35597afbe4b03e5faaf156018d29eb26c7bd29630bca902053999a90b3d394"
    "en-US"
  end
  language "es" do
    sha256 "86bbd530c8bdde29849ccd02daaceefea2c01ec8f85ae75aa60dd2b9aeef9203"
    "es-ES"
  end
  language "fr" do
    sha256 "d52bb2cb9b43a01aca8243eb2ca4eeed0a5d596781cddd22a13b281d79586998"
    "fr"
  end
  language "it" do
    sha256 "be32d91a96b5e346b3271a8e3a7edee2e9533b007fedaf8496c78d60512fe65f"
    "it"
  end
  language "ja" do
    sha256 "cddf26446610762fc95475f89b10313813bebe59379267a4b9ed5aa8510f186b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "b6b038b56da10fd243d127e4f4e6a0ebdfb7fb5bc34c24cdb0782dd5afcc6ce0"
    "ko"
  end
  language "nl" do
    sha256 "10fbd11758b1f58ffc1577ee1a6e49ecb760369159e7b9a9bf3a7cc5d1b399c6"
    "nl"
  end
  language "pt-BR" do
    sha256 "dc5f06ba70d1acd987524743432d7d5de4ae6f1ed665b3e61813ed77596114fc"
    "pt-BR"
  end
  language "ru" do
    sha256 "03cff692837fa461586ef6e3e68af397c7c28ed30adf2edfc7b601f704393510"
    "ru"
  end
  language "uk" do
    sha256 "d491bcecc0f58fce0a3fcd60461f8df9a53e27e22f3831f673ea1d976159ce89"
    "uk"
  end
  language "zh-TW" do
    sha256 "4fea688775980802a503644f76443cdbf7e512281f6e50a7de2e44ced83a36f5"
    "zh-TW"
  end
  language "zh" do
    sha256 "0d89c4b6736515fd463f00bdc7335afce35436d967c8e8ce7376685b31a92b53"
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
