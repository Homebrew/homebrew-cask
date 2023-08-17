cask "openbb-terminal" do
  arch arm: "ARM64", intel: "x86.64"

  version "3.2.1"
  sha256 arm:   "5299fcc49fde86e581baceeb008499257fdadf84274c7502ac0e7ddb9063b8fc",
         intel: "8ff7fa349dd87db6cdcc9d012a959d84aa16e9049dbdca83555d3ad044351055"

  url "https://github.com/OpenBB-finance/OpenBBTerminal/releases/download/v#{version}/#{arch}.MacOS.OpenBB.Terminal.v#{version}.pkg",
      verified: "github.com/OpenBB-finance/OpenBBTerminal/"
  name "OpenBB Terminal"
  desc "Open-source investment research terminal"
  homepage "https://openbb.co/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  pkg "#{arch}.MacOS.OpenBB.Terminal.v#{version}.pkg"

  uninstall pkgutil: "OpenBB Terminal"

  zap trash: [
    "~/.openbb_terminal",
    "~/OpenBBUserData",
  ]
end
