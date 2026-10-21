cask "firefox@developer-edition" do
  version "159.0b5"

  language "ca" do
    sha256 "d55a590d1d7914132b97818ee84cf32b678c9be7a6dd214d30447ccdc6f48fd3"
    "ca"
  end
  language "cs" do
    sha256 "35416659493aa7eb3c0f96b13767a5eec01c338c034ab9873b050840fed6545c"
    "cs"
  end
  language "de" do
    sha256 "daf7b0fd72ac536745022773b53d128c9b5d68a455698e145adf8124032a98cd"
    "de"
  end
  language "en-CA" do
    sha256 "538991d26da5deea5c7571142d372c743dcc5f303ac6f362d0bf6be98f734b9f"
    "en-CA"
  end
  language "en-GB" do
    sha256 "8d8a5afb24063d7854d34abbb07c8df0b9675b0994f70f2e57a835ae0792dbce"
    "en-GB"
  end
  language "en", default: true do
    sha256 "a868078b490353a48b98f73a05e54f90d2f6c7ab4c1e830827ce53fe05c78300"
    "en-US"
  end
  language "es" do
    sha256 "b9be806d73fb3aac4ffa042ec02d148411a03189be57eb8dbf29047bddb4e8a8"
    "es-ES"
  end
  language "fr" do
    sha256 "0dbbc84c78112852330910e17947d5f9a68c61eae2701caca6d21fbbb9ed06f9"
    "fr"
  end
  language "it" do
    sha256 "04fd24b570037886fa11776784651f797ae9cbba043757e934a78280958818e5"
    "it"
  end
  language "ja" do
    sha256 "691a3413be1907541bd82bcefeb01d835e310360a3573e9d68c0dd916e7b11ab"
    "ja-JP-mac"
  end
  language "ko" do
    sha256 "59a782b9c3f4759162b342b73242bfd87c6447ea1c18977589c6f3066f5c70eb"
    "ko"
  end
  language "nl" do
    sha256 "c504d26538da173b3186fef0b0ddb67165b22eccae3f38387f3d63a586d31ed2"
    "nl"
  end
  language "pt-BR" do
    sha256 "af1a4b4c9e905c6e7af463fd8781859959f66acef0820c806d5d7f5ff8a9ce96"
    "pt-BR"
  end
  language "ru" do
    sha256 "2fc2712db6d91ba4e08f922fd9b7e7886842b97d1e0063317457c008a8000ee1"
    "ru"
  end
  language "uk" do
    sha256 "e0eb5eefc1186a2b122f34bff35007d7e5114a8e6b9a2f0da45e2b6cdc2aa6bf"
    "uk"
  end
  language "zh-TW" do
    sha256 "b0c58a47b21e8aab7731148711f73eab7e13ace014168c4cb6f0a4b8ec91bdad"
    "zh-TW"
  end
  language "zh" do
    sha256 "9e8bea57ad9372c0d906686e3e7137f83099e0371a9d9920d7a599c9342f2848"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
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
        "~/Library/Preferences/org.mozilla.firefoxdeveloperedition.plist",
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
