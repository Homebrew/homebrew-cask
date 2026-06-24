cask "thunderbird@beta" do
  version "153.0b3"

  language "cs" do
    sha256 "9012d164d7898a8467f226e411131bb05c9120e0efa4d623d20fa9559112bf8f"
    "cs"
  end
  language "de" do
    sha256 "9acb68e893de76c4cf4aff1d0d4225fbfc2d6296a303dd614330cd7cc5bd38c8"
    "de"
  end
  language "en-GB" do
    sha256 "d416d8d1980cfa6a27f7c43887a2d2b6324969753b00786d4b48fcf5768497d5"
    "en-GB"
  end
  language "en", default: true do
    sha256 "ea411663f14f156e57a48202119460674c137c9a07a194e32ca083c5a265787b"
    "en-US"
  end
  language "fr" do
    sha256 "bc021069902a9cc37a3671e2bda0f6d9d3ec368b4819540ed6870a7218f6c253"
    "fr"
  end
  language "gl" do
    sha256 "8463a2dcb06b5be0c0433ac4b0a980b17b33e2b2c8d0498139989d26dd165ae5"
    "gl"
  end
  language "it" do
    sha256 "7dcdae709f20818ed84f45db5a46a1ceaf9512dcbee4651096b3b0de43f1c6b9"
    "it"
  end
  language "ja" do
    sha256 "e9b8fc73fd82beeac3a6871ef98dd2f0397110c9e4b40f4ff5227b451a669bb9"
    "ja-JP-mac"
  end
  language "nl" do
    sha256 "cbdb34ad0e61d46d494d89284dd6a52194252cb8923994ccc11bcf8357af7e8c"
    "nl"
  end
  language "pl" do
    sha256 "d1fb6ba3df3d7adae9926362bfd4a0e4fafb28743c6e0f4194361e88f49ed68d"
    "pl"
  end
  language "pt" do
    sha256 "894592c829f0d5d8bf472b59cd1085e7dc98c3a6b423f9cd78f4e8b760441a5b"
    "pt-PT"
  end
  language "pt-BR" do
    sha256 "297ef6b52e214b9afa733d83399ffd87e7f612d1c14db0321b6148f666122cc5"
    "pt-BR"
  end
  language "ru" do
    sha256 "e6aedb99ff7e8b9b8f8149da112908d8ea1e591abd3e53993c6ac84262dd5a5b"
    "ru"
  end
  language "uk" do
    sha256 "6cfef8432f21906c878d7195219b53d3c0fe8e0d06786d7d84be92ee2837ef8e"
    "uk"
  end
  language "zh-TW" do
    sha256 "ba8d63134238c0fd81625d7553c91eb09c73e27649b645506f397ebea2f2d54e"
    "zh-TW"
  end
  language "zh" do
    sha256 "43c6d99e6daca540c71d16f5aa5dd7cc6bafb57134256664997e03c2cc96d172"
    "zh-CN"
  end

  url "https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/#{version}/mac/#{language}/Thunderbird%20#{version}.dmg",
      verified: "download-installer.cdn.mozilla.net/pub/thunderbird/"
  name "Mozilla Thunderbird Beta"
  desc "Customizable email client"
  homepage "https://www.thunderbird.net/#{language}/download/beta/"

  livecheck do
    url "https://product-details.mozilla.org/1.0/thunderbird_versions.json"
    strategy :json do |json|
      json["LATEST_THUNDERBIRD_DEVEL_VERSION"]
    end
  end

  auto_updates true
  depends_on :macos

  app "Thunderbird Beta.app"

  zap trash: [
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.thunderbird*.sfl*",
        "~/Library/Caches/Mozilla/updates/Applications/Thunderbird*",
        "~/Library/Caches/Thunderbird",
        "~/Library/Preferences/org.mozilla.thunderbird*.plist",
        "~/Library/Saved Application State/org.mozilla.thunderbird*.savedState",
        "~/Library/Thunderbird",
      ],
      rmdir: "~/Library/Caches/Mozilla"
end
