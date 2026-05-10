cask "clipi" do
  version "0.1.1"
  sha256 "c2f184c053651babf89de65d398fd914a58141a7be2aa9addccb9b7dad77c730"

  url "https://github.com/navjots35/clipi/releases/download/v#{version}/clipi-#{version}.dmg"
  name "clipi"
  desc "Keyboard-first clipboard manager"
  homepage "https://github.com/navjots35/clipi"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  app "clipi.app"

  zap trash: [
    "~/Library/Application Support/clipi",
    "~/Library/Preferences/co.thebh.clipi.plist",
  ]
end
