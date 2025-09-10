cask "pixieditor" do
  version "2.0.1.14"
  sha256 "8552165c4c0085cb60fe940b125ed8151deef485ab3726326d381cb603ba3363"

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
