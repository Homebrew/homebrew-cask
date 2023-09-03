cask "openbb-terminal" do
  # raised an issue about the x86.64 typo, https://github.com/OpenBB-finance/OpenBBTerminal/issues/5405
  arch arm: "ARM64", intel: "x86.84"

  version "3.2.2"
  sha256 arm:   "63706c56c1d264dd8b98957cf62d3d1689a8edb684d26c4f7a0bf1b1eb1335fc",
         intel: "6fe94ec142155f6abf8dfcb77dda834454720594d85a3292b0772b8b27472247"

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
