cask "firefox@developer-edition" do
  version "150.0b3"

  language "ca" do
    sha256 "c43ad69a72e4aba703c27c8592c005f4b7bff35571a491f8f1fd3fd88b0343ab"
    "ca"
  end
  language "cs" do
    sha256 "f1a9a20ec9fd955469496b4f1a7d23321ded1430541d42653835e0390dc062a2"
    "cs"
  end
  language "de" do
    sha256 "7f36217053805f328ab363939cf03232409f1343e23b9571e9a2fd57b9082355"
    "de"
  end
  language "en-CA" do
    sha256 "9d5f44049519e8ef43c1c21b1e4bf2d87e61e9c422847c3ed3bc203703f97549"
    "en-CA"
  end
  language "en-GB" do
    sha256 "4301a4867d32ef8deb216e4aedddbf7d2dea5a9b344ca065b4063f185141a79a"
    "en-GB"
  end
  language "en", default: true do
    sha256 "42468185913cca749f0eff0f607ed09387439d44f657daa24c8b8e04c21c9f08"
    "en-US"
  end
  language "es" do
    sha256 "fc40b941a123a9a637f5a214b653125d6499ba1a96500cdca07002c20412b0eb"
    "es-ES"
  end
  language "fr" do
    sha256 "001a3ed393f3bcb72e9f94dc7bfc742015e7650ce42546a149d2f86b71cae0fc"
    "fr"
  end
  language "it" do
    sha256 "e7486771b6cfb103d8b0a2f38b5b793091902f20af5c6bfb8e748bddde60aec0"
    "it"
  end
  language "ja" do
    sha256 "3c787b5b86d955427c992f363e0ac5616ace19b4e23a97854361996fd1879665"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "830ee06a05096864c8a294c90a3635bf7bafdf235c0e99b43f7208db3972ba52"
    "ko"
  end
  language "nl" do
    sha256 "0bf14e637eeb10808750bfabd200e5f47c0508c1fa8a83c9112ce852c8b761f1"
    "nl"
  end
  language "pt-BR" do
    sha256 "1c36ca7b6a1f8fbc0007d9799581d7aa4559aabda9a29059e392f511e372555a"
    "pt-BR"
  end
  language "ru" do
    sha256 "7332410a17b0dc0ee47b0ebff31983c7f50d7a8edadb8c8f6a59a9d04b4d6ccc"
    "ru"
  end
  language "uk" do
    sha256 "aa3d72f9ae71b24b32a0f8875f2588ea0148b2b0f8b660312e9ffc880091cfa7"
    "uk"
  end
  language "zh-TW" do
    sha256 "86668e6f259cc50d31edcdec9340a86459c0b84e5438dde22c7c3d34b8f50c32"
    "zh-TW"
  end
  language "zh" do
    sha256 "87ec96758bbff79961d83be11c1235a5108b5c868c6bb6df2a9319e7e17988ed"
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
