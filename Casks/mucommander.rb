cask "mucommander" do
  version "1.2.0-1"
  sha256 "d5e386d62b01ed7614b15a3fb807b21f8c3e650ddbd2b5b8d08c6949ffcd779d"

  url "https://github.com/mucommander/mucommander/releases/download/#{version}/muCommander-1.2.0-2.dmg",
      verified: "github.com/mucommander/mucommander/"
  name "muCommander"
  desc "File manager with a dual-pane interface"
  homepage "https://www.mucommander.com/"

  livecheck do
    url :url
    regex(%r{href=.*?/tag/v?(\d+(?:[.-]\d+)+)["' >]}i)
    strategy :github_latest
  end

  app "muCommander.app"

  zap trash: [
    "~/Library/Preferences/muCommander",
  ]
end
