cask "icestudio" do
  version "0.9.0"
  sha256 "8566ea171c0baacf5da44fec35b8df916e6b3ccef01b59b3043371bf8465d394"

  url "https://github.com/FPGAwars/icestudio/releases/download/v#{version}/icestudio-#{version}-osx64.dmg",
      verified: "github.com/FPGAwars/icestudio/"
  name "icestudio"
  desc "Visual editor for open FPGA board"
  homepage "https://icestudio.io/"

  app "icestudio.app"

  zap trash: [
    "~/.icestudio",
    "~/icestudio.log",
    "~/Library/Application Support/icestudio",
    "~/Library/Caches/icestudio",
    "~/Library/Preferences/com.nw-builder.icestudio.plist",
    "~/Library/Saved Application State/com.nw-builder.icestudio.savedState",
  ]
end
