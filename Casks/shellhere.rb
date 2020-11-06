cask "shellhere" do
  version :latest
  sha256 :no_check

  url "https://github.com/downloads/lhagan/ShellHere/ShellHere.dmg"
  name "ShellHere"
  desc "Toolbar app for Finder that opens the current location in Terminal"
  homepage "https://github.com/lhagan/ShellHere/"

  app "ShellHere.app"
end
