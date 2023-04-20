cask "icestudio" do
  version "0.10"
  sha256 "c39d746bb177e1b433244117edfadc82a5ccfcc9ce5720e9c37c863e8d29f38e"

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
