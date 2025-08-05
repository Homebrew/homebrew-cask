cask "pixieditor" do
  version "2.0.1.7"
  sha256 "e44c37043aadac1d173d711ad7bc0d04e91f57e87a90cb4844404f5f7b0bae6d"

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
