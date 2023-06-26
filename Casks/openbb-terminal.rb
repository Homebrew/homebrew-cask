cask "openbb-terminal" do
  arch arm: "ARM64", intel: "x86.64"

  version "3.1.0"
  sha256 arm:   "0ca1abe8841594370602b3f7067e1d1ee10fc6899c7ac64aa8e134d7a83eaa60",
         intel: "2c4b7f1da7f8cf56a3d4d9d4a3ec0dec03eac36b06368b40c639a580bea644a5"

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
