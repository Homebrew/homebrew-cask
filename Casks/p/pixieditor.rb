cask "pixieditor" do
  version "2.0.1.13"
  sha256 "8df0c623f25e89c7b3f3d7cdfe4465768a60f5175be4730a9a1ee975957c6f38"

  url "https://github.com/PixiEditor/PixiEditor/releases/download/#{version}/PixiEditor-#{version}-universal-macos.dmg",
      verified: "github.com/PixiEditor/PixiEditor/"
  name "PixiEditor"
  desc "Open Source Universal 2D Graphics Editor"
  homepage "https://pixieditor.net/"

  depends_on macos: ">= :catalina"

  app "PixiEditor.app"

  zap trash: [
    "~/Library/Application Support/PixiEditor",
    "~/Library/Preferences/com.pixieditor.plist",
  ]
end
