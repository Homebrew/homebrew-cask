cask "folo" do
  arch arm: "arm64", intel: "x64"

  version "1.13.0"
  sha256 arm:   "59d80850927202eb42356169007deba25ea11a7df75ee9c00780fd335b2c3d4a",
         intel: "9ae90de2b2368b8cb2664b5e7ee31c62a982fe7c9046fe3228af3a2db4ffe543"

  url "https://github.com/RSSNext/Folo/releases/download/desktop%2Fv#{version}/Folo-#{version}-macos-#{arch}.dmg"
  name "Folo"
  desc "Information browser"
  homepage "https://folo.is/"

  livecheck do
    url :url
    regex(%r{^(?:desktop[/@])?v?(\d+(?:\.\d+)+)$}i)
  end

  auto_updates true
  depends_on macos: :monterey

  app "Folo.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/is.follow.sfl*",
    "~/Library/Application Support/Folo",
    "~/Library/Logs/Folo",
    "~/Library/Preferences/is.follow.plist",
    "~/Library/Saved Application State/is.follow.savedState",
  ]
end
