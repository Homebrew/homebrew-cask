cask "icestudio" do
  version "0.8.0"
  sha256 "9ab5d155103aaa15b0fa1a9aabdc359fa68c66f08568daf24812c4514cdee8d8"

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
