cask "jexiftoolgui" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.0.2"
  sha256 arm:   "19a42a8c39aae1b572b7574a7878cea7a15c529852eba810b9e64837a86ab4b1",
         intel: "8601297103f62858ca57655e78ae91f8a675a61fcbad4353a89e507d01a3053a"

  url "https://github.com/hvdwolf/jExifToolGUI/releases/download/#{version}/jExifToolGUI-#{arch}-macos-#{version}-with_jre.dmg.zip",
      verified: "github.com/hvdwolf/jExifToolGUI/"
  name "jExifToolGUI"
  desc "Graphical frontend for ExifTool"
  homepage "https://hvdwolf.github.io/jExifToolGUI/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "jExifToolGUI.app"

  zap trash: [
    "~/.jexiftoolgui",
    "~/Library/Application Support/jExifToolGUI",
    "~/Library/Caches/jexiftoolgui",
    "~/Library/Preferences/com.jexiftoolgui.plist",
    "~/Library/Saved Application State/com.jexiftoolgui.savedState",
  ]
end
