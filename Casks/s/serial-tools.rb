cask "serial-tools" do
  version "0.6"
  sha256 :no_check

  url "https://www.w7ay.net/site/Downloads/Serial%20Tools/Serial%20Tools%20app.dmg"
  name "Serial Tools"
  homepage "https://www.w7ay.net/site/Applications/Serial%20Tools/"

  disable! date: "2024-07-06", because: "is 32-bit only"

  app "Serial Tools.app"
end
