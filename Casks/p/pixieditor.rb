cask "pixieditor" do
  version "2.1.2.3"
  sha256 "681db3538727589dcfcd942d67a1b1b6ff548d06bc6b0bd955fcec33a3547b56"

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
