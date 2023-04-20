cask "openbb-terminal" do
  arch arm: "ARM64", intel: "x86.64"

  version "2.5.1"
  sha256 arm:   "3f10df936840f1d944a6b8c940293f5d4f4e37f71db0d84e973427a8ad3d3378",
         intel: "dfabc981934cd53b9d176ed455a17f8153421aa2aefe505686553ac88b5c83ff"

  url "https://github.com/OpenBB-finance/OpenBBTerminal/releases/download/v#{version}/#{arch}.MacOS.OpenBB.Terminal.v#{version}.dmg",
      verified: "github.com/OpenBB-finance/OpenBBTerminal/"
  name "OpenBB Terminal"
  desc "Open-source investment research terminal"
  homepage "https://openbb.co/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  suite "OpenBB Terminal"

  zap trash: [
    "~/.openbb_terminal",
    "~/OpenBBUserData",
  ]
end
