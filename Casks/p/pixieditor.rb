cask "pixieditor" do
  version "2.1.0.22"
  sha256 "280b7bcd7109521fca0a26d52f99011f84c473f5397a8f9d774305579ea44c80"

  url "https://github.com/PixiEditor/PixiEditor/releases/download/#{version}/PixiEditor-#{version}-universal-macos.dmg",
      verified: "github.com/PixiEditor/PixiEditor/"
  name "PixiEditor"
  desc "Open Source Universal 2D Graphics Editor"
  homepage "https://pixieditor.net/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "PixiEditor.app"

  zap trash: [
    "~/Library/Application Support/PixiEditor",
    "~/Library/Preferences/com.pixieditor.plist",
  ]
end
