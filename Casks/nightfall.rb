cask "nightfall" do
  version "2.1.2"
  sha256 "2271003b550c8fd75d3c8e6cf987e54e892c10eef12f5cb03f72dee7731d989b"

  url "https://github.com/r-thomson/Nightfall/releases/download/v#{version}/Nightfall.dmg"
  name "Nightfall"
  desc "Menu bar utility for toggling dark mode"
  homepage "https://github.com/r-thomson/Nightfall/"

  depends_on macos: ">= :catalina"

  app "Nightfall.app"
end
