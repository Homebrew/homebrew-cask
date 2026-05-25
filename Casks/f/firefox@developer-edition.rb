cask "firefox@developer-edition" do
  version "152.0b3"

  language "ca" do
    sha256 "e61e2608e591811f88a2d025871138eca46ae20053eaa507aeb1658fa728999c"
    "ca"
  end
  language "cs" do
    sha256 "f8773106a38527819d4c683f45492724322c7d48cc8de514a65e3e8ff4a53bd4"
    "cs"
  end
  language "de" do
    sha256 "94e71a4782e5aca70a911f764ebf491f253bb9659f0bbc9c9407703b3b9c58c1"
    "de"
  end
  language "en-CA" do
    sha256 "ea01448dcb439923edb9ebc2e67cd87a2b0cbe262919918ff501e239d134463a"
    "en-CA"
  end
  language "en-GB" do
    sha256 "58c34db1a6ea2bff1f60a55cba8dd2ee004cbfda763bc1de3f9d8edb57519ada"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a1bb1083b153fd6eb863466366e67b38939f7e45ecd87bdef7de0779b980607a"
    "en-US"
  end
  language "es" do
    sha256 "b60ffcc50230245d850480b8083ee796beff57cc3eb1460f9b6d867a0621672a"
    "es-ES"
  end
  language "fr" do
    sha256 "93ed4170ff3f8c1fc1ca1a280fb2dd9b55263a920bf63a1f16c8ae9f3e1bb179"
    "fr"
  end
  language "it" do
    sha256 "90c2c72dfec13623bc1dcf52179debc8fca7e3f72ac32c62c9a8476641c4d262"
    "it"
  end
  language "ja" do
    sha256 "5fa8f444df3365873905fd2eee307112487948c60741518a9478b6bb7f4a2e4b"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "60defd6d92ab3caaaa29fc4e359d4cc50d5309de7c3fa30b7c60923d87bc0fb9"
    "ko"
  end
  language "nl" do
    sha256 "5ec5a33b57f3f04b0af64ed035b3459c817a76a18aedd0dd8c1a4bcb3e0dad8b"
    "nl"
  end
  language "pt-BR" do
    sha256 "cb8188dfb0470789fb2f5bd18ea460d3970f6e0642755077ad59e974073c76c5"
    "pt-BR"
  end
  language "ru" do
    sha256 "3d2e352c84c796d99d4a8d7f62a0d475f63fadfda762cc32cb707e7405e7355f"
    "ru"
  end
  language "uk" do
    sha256 "f9689dcee753e4ba87fc513c08684025bbd7b0381080b77db29d1bc8b5e4a67c"
    "uk"
  end
  language "zh-TW" do
    sha256 "a022215e0ddc0e7f1cf78bde35a8c4913f9eb20723d504d56f1b9f9020522b39"
    "zh-TW"
  end
  language "zh" do
    sha256 "ca8e638d59a6df59fde102868359a475651efde4b6960550d726f6565608e953"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/devedition/releases/"
  name "Mozilla Firefox Developer Edition"
  desc "Web browser"
  homepage "https://www.mozilla.org/firefox/developer/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/firefox_versions.json"
    strategy :json do |json|
      json["FIREFOX_DEVEDITION"]
    end
  end

  auto_updates true
  depends_on :macos

  app "Firefox Developer Edition.app"

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
