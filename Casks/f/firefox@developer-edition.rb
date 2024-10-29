cask "firefox@developer-edition" do
  version "133.0b1"

  language "ca" do
    sha256 "2eda4500e9bf8fef2fb07924a2bc855cadb6678dfde9a04ef02ce3078e8d94db"
    "ca"
  end
  language "cs" do
    sha256 "94cb7c7bfca7f313b7608c33dce30a0b02c94afd56a8cce7e30727d294db28b6"
    "cs"
  end
  language "de" do
    sha256 "eb6c0c7fe8ae8856abdfbadfb73303a584eeddac7a7e20b63d515722adefafae"
    "de"
  end
  language "en-CA" do
    sha256 "284d4b4946f7d26426d0bea885a7c8c5040a067cdf04e5fa5ffe7717f6539890"
    "en-CA"
  end
  language "en-GB" do
    sha256 "0c01771ca08be7f90b4ddc058df3a4949b4e8b72b8b25b9a0b13fed8696ca763"
    "en-GB"
  end
  language "en", default: true do
    sha256 "9c1b5a3a53d33f1cfc92a06f6f12b25891692183a9cb3d6adf45db6e978f172a"
    "en-US"
  end
  language "es" do
    sha256 "7420bcfaae885aa05690563220fc578a79cd856a36ee22eee83b6c7358cd1622"
    "es-ES"
  end
  language "fr" do
    sha256 "6eced4b57d9fa7f2197ff2b8ed2ec0ba0c3830bbb8875b0eb02f2ba58673204e"
    "fr"
  end
  language "it" do
    sha256 "482b4731ce14fc86f69e62df4b01f0ee6d7c57f872b9660823edcc02e6d98a7f"
    "it"
  end
  language "nl" do
    sha256 "8d5e2476c647124ae1cda6c2267a98840533704f19eddf81bc89f6a39cfdd116"
    "nl"
  end
  language "ja" do
    sha256 "adf08791c234aabf3f8533c2610ff5819f438ec45f6aada6e3a545032e58fd6f"
    "ja-JP-mac"
  end
  language "pt-BR" do
    sha256 "a4db781659dae5b869cbb8eacd708c0a1ed9a0dd7c8ae13f72cb394f787b5599"
    "pt-BR"
  end
  language "ko" do
    sha256 "323e1e9d58e0456eddb5bd9ad6854e2e121f7e3d9aa2201291ac02cffc0b4d56"
    "ko"
  end
  language "ru" do
    sha256 "9557b33efcd6bc6271dc38b25df983f7263abd6d8518e1616aa05b5211981dd4"
    "ru"
  end
  language "uk" do
    sha256 "781b4d348b907d19af1e3b65893888e132cf835a5618d86484fd5da29313d5f6"
    "uk"
  end
  language "zh-TW" do
    sha256 "af92ab7e209d962895d2be07f6b9943f821fe743ab89007350bfdbd241bf35a4"
    "zh-TW"
  end
  language "zh" do
    sha256 "df596da3b54de5db278006459c48dcd687699d019848f361da14a29642615185"
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
  depends_on macos: ">= :catalina"

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
