cask "pixieditor" do
  version "2.0.1.19"
  sha256 "3ff0362a057877036df537768176f5628598faa285a3512b412ad30059be9c9f"

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
