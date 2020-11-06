cask "nightfall" do
  version "2.1.1"
  sha256 "ad6242cbf9477a34b19d38f9c39dbc354dd3eca75c6585837757503bc5302b22"

  url "https://github.com/r-thomson/Nightfall/releases/download/v#{version}/Nightfall.dmg"
  appcast "https://github.com/r-thomson/Nightfall/releases.atom"
  name "Nightfall"
  desc "Menu bar utility for toggling dark mode"
  homepage "https://github.com/r-thomson/Nightfall/"

  depends_on macos: ">= :catalina"

  app "Nightfall.app"
end
