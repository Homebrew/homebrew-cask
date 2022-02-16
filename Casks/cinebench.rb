cask "cinebench" do
  version "23"
  sha256 "c8826647af0c7c8cc9bfa2533b254a37deb9852caeea1a47cbacec5e577cdda9"

  url "https://http.maxon.net/pub/cinebench/CinebenchR#{version}.dmg"
  name "Cinebench"
  homepage "https://www.maxon.net/products/cinebench/"

  livecheck do
    url "https://www.maxon.net/en/downloads"
    regex(/href=.*?cinebench-r(\d+(?:\.\d+)*)-downloads/i)
  end

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
