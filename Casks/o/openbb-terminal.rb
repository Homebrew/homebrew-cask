cask "openbb-terminal" do
  arch arm: "ARM64", intel: "x86.64"

  version "3.2.0"
  sha256 arm:   "c6c18c33bab44dc68f5130e20d7b36570637783fcdb31643b4e314ad1e37c538",
         intel: "ab49e5a02fd4ed23bc759724df5ac5a2a0610450576b3489c09614b0c0d4ff4e"

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
