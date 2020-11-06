cask "cinebench" do
  version "R20,281795"
  sha256 "c2ee9b2dab04cdd8fc1b1a03bb2303cdaf1495cbc2614cd2f3fa56cd8151e47e"

  url "https://http.maxon.net/pub/cinebench/Cinebench#{version.before_comma}.dmg"
  name "Cinebench"
  homepage "https://www.maxon.net/products/cinebench/"

  depends_on macos: ">= :el_capitan"

  app "Cinebench.app"

  uninstall quit: "net.maxon.cinebench"

  zap trash: [
    "~/Documents/MAXON",
    "~/Library/Caches/net.maxon.cinebench",
    "~/Library/Caches/net.maxon.cinema4d",
    "~/Library/Preferences/MAXON",
    "~/Library/Saved Application State/net.maxon.cinebench.savedState",
  ]
end
