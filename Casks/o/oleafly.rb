cask "oleafly" do
  version "0.3.13"
  sha256 "00b53c5895514aada6de477deb5651efc2ff2b652ce778f7b8986c578df5f9ab"

  url "https://github.com/Oleafly/Oleafly/releases/download/v#{version}/Oleafly_#{version}_aarch64.dmg"
  name "Oleafly"
  desc "Local-first workspace for writing, compiling, and reviewing research"
  homepage "https://oleafly.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :catalina"

  app "Oleafly.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.oleafly.app.sfl*",
    "~/Library/Application Support/com.oleafly.app",
    "~/Library/Caches/com.oleafly.app",
    "~/Library/HTTPStorages/com.oleafly.app",
    "~/Library/Preferences/com.oleafly.app.plist",
    "~/Library/Saved Application State/com.oleafly.app.savedState",
    "~/Library/WebKit/com.oleafly.app",
  ]
end
