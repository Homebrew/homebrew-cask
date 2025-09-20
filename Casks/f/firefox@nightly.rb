cask "firefox@nightly" do
  version "145.0a1,2025-09-20-09-08-40"

  language "ca" do
    sha256 "43a832f5a5372348cd225d0c2dffd21c6c6a5c3abdc8727272fc8b29455d9617"
    "ca"
  end
  language "cs" do
    sha256 "ae4aee24ab0e5ddff93855554e8ae2e91b0e8c5f997943def9d0ea65010cfcb4"
    "cs"
  end
  language "de" do
    sha256 "ded2b8f0dd377a246076130fac2a96b0aa52930c8fe5b56c740ab13fbd2a5c84"
    "de"
  end
  language "en-CA" do
    sha256 "1d4c3a071ed5cb0cd1b57be0178b18f2be3403c4a1006260f361ff6f3fe19efc"
    "en-CA"
  end
  language "en-GB" do
    sha256 "a80fa999c4b1304b4a819adfaabd561d5d783aa4f5e2649a22ade9c71779e70c"
    "en-GB"
  end
  language "en", default: true do
    sha256 "b715e8fa99760ed2df4f7927cf97e8567f2db2ab71850c3e2fbf0e6463c252f8"
    "en-US"
  end
  language "es" do
    sha256 "a581c3fbb394e7b00c222b2cf3ddc41707be66de12834f7b753ea67a56d5bab9"
    "es-ES"
  end
  language "fr" do
    sha256 "64bb2d6593c76114f4a0d40efb5c280a758b3704d43c8fbe49bb8728e9f4b87e"
    "fr"
  end
  language "it" do
    sha256 "e01be1c0ee313fc89eb939042da4ef23a99ee8f9c1f820406482e255bb84282d"
    "it"
  end
  language "ja" do
    sha256 "b86e57783656680a5b44ce1dfb264540818af80c8e1cbd575c7ed6871a29c71b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "113e22f9037388bcec48c1c34ecc00d3ae0f28482be4fdddfe57209ddd60b494"
    "ko"
  end
  language "nl" do
    sha256 "a1a5171180ab9ffb3d3bf1407389d37704d1de2cb98b0ff7637e591c9d790723"
    "nl"
  end
  language "pt-BR" do
    sha256 "639da455c1c6fb51949277917c961ad1fb761dcbfac814650231ab50a7c6c27e"
    "pt-BR"
  end
  language "ru" do
    sha256 "272f6e8ceef4deefd395eb7d0d8a6bfdd11727ab7be294de31c341e9efbc9fcf"
    "ru"
  end
  language "uk" do
    sha256 "e370d04a1c70fb39ff8a78c24d113b8ccaa8ae5c6e522207931aca048ca16b2b"
    "uk"
  end
  language "zh-TW" do
    sha256 "2d257c671d99af8098f39bf16320ef48b81489a785b11931d01f07b69530e7e4"
    "zh-TW"
  end
  language "zh" do
    sha256 "c19cc26477cf9e9aae8f8a9b30aa4c087b9ab8c092cae1456b877d5fb015d9ba"
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
