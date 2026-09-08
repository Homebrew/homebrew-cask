cask "pixieditor" do
  version "2.1.2.4"
  sha256 "6040e0c08270e357a06cd8942c50a1286edde72965e4043007fb5e540a5d66a8"

  url "https://github.com/PixiEditor/PixiEditor/releases/download/#{version}/PixiEditor-#{version}-universal-macos.dmg"
  name "PixiEditor"
  desc "Open Source Universal 2D Graphics Editor"
  homepage "https://pixieditor.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

  app "PixiEditor.app"

  uninstall quit: "com.pixieditor"

  zap trash: [
    "~/Library/Application Support/PixiEditor",
    "~/Library/Preferences/com.pixieditor.plist",
  ]
end
