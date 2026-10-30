cask "pixieditor" do
  version "2.1.2.5"
  sha256 "5a2a58f14223a91ab4fd23d52beac7cc3879071f53f143fd68c54dc2e7400e75"

  url "https://github.com/PixiEditor/PixiEditor/releases/download/#{version}/PixiEditor-#{version}-universal-macos.dmg"
  name "PixiEditor"
  desc "Open Source Universal 2D Graphics Editor"
  homepage "https://pixieditor.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "PixiEditor.app"

  uninstall quit: "com.pixieditor"

  zap trash: [
    "~/Library/Application Support/PixiEditor",
    "~/Library/Preferences/com.pixieditor.plist",
  ]
end
