cask "firefox@nightly" do
  version "155.0a1,2026-07-27-13-15-00"

  language "ca" do
    sha256 "07f7b94e3a18fa152c8bb959d1ead06cd0b7f9cddc5caf6c8aa60d6f32efcdf9"
    "ca"
  end
  language "cs" do
    sha256 "2e34ac0dda98c09f4fec09f354fb5b4d4b91607a2c5348601c2b58201e8ddf7d"
    "cs"
  end
  language "de" do
    sha256 "b074e742e2ab879b5721d98c4efdc25f7cdc74b53777a19458924a7ba0fd7f30"
    "de"
  end
  language "en-CA" do
    sha256 "a2b5228abace44ed535bf401130f61d62a4b22a835aeb9481309b1a3e853fb2d"
    "en-CA"
  end
  language "en-GB" do
    sha256 "6d64fd3bc0f43b6b24d81fd9789ed6d7b14311b5aed8d0a2f01a6292610a00dd"
    "en-GB"
  end
  language "en", default: true do
    sha256 "f1cbab59c06c00d603d7a0f2d54840f75b9bccd1556ca1cae77d805bf97ce6ed"
    "en-US"
  end
  language "es" do
    sha256 "05be54962a67f56dbbd010047c99b2e29da3ffb70551e9d37bcfb399788cfbde"
    "es-ES"
  end
  language "fr" do
    sha256 "db7b0df11ac13300ad35bfd44b4539bdbb42a5178e53419224f432fa27a6eab3"
    "fr"
  end
  language "it" do
    sha256 "332298fa03d53b0572718ee461d8e99e1dc15fd2b831da1471ace9eb697ea102"
    "it"
  end
  language "ja" do
    sha256 "19138799e9912dcaf76820e267caa4964d75b88be6ce08692a6e21757fafae0b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "56d2b9d119eeb445af4df9b6194d392137832885bc7543aea50117353b382f27"
    "ko"
  end
  language "nl" do
    sha256 "54d581a256c68555b1fc04890c4a8f06aad7bfe746c79958b58c0779dd981e58"
    "nl"
  end
  language "pt-BR" do
    sha256 "b4d7392f5fb798a7b221279da53badeb52cb1d4f2d72bdb6cd40f9c31ffd92b8"
    "pt-BR"
  end
  language "ru" do
    sha256 "642da926abc162ab1a2069772ff24197ae74131a3b4f747a42e81d007b7364b4"
    "ru"
  end
  language "uk" do
    sha256 "d45d465e833b165d1bc033f20dfd88fd1404c351a56c9052eda292894667500e"
    "uk"
  end
  language "zh-TW" do
    sha256 "a491fdfd5f72f65c74c0da25554e15db505afab87a3a92b3ed36db720d4dec70"
    "zh-TW"
  end
  language "zh" do
    sha256 "7638a890197a77b7af47e835e240094b4e2782087a36684d4dffcde6743119fe"
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
