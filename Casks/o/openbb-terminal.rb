cask "openbb-terminal" do
  arch arm: "ARM64", intel: "x86.64"

  version "3.2.5"
  sha256 arm:   "80c12368b62b135bb74736a411c9adf277dbed46969b0b49be46cbd768afb618",
         intel: "d5a386b10ba076a69a7e642034a55b1c5e53ef32c8fc6383985199709b06572e"

  url "https://github.com/OpenBB-finance/OpenBBTerminal/releases/download/v#{version}/#{arch}.MacOS.OpenBB.Terminal.v#{version}.pkg",
      verified: "github.com/OpenBB-finance/OpenBBTerminal/"
  name "OpenBB Terminal"
  desc "Open-source investment research terminal"
  homepage "https://openbb.co/"

  deprecate! date: "2024-05-16", because: :discontinued
  disable! date: "2025-05-16", because: :discontinued

  depends_on macos: ">= :monterey"

  pkg "#{arch}.MacOS.OpenBB.Terminal.v#{version}.pkg"

  uninstall pkgutil: "OpenBB Terminal"

  zap trash: [
    "~/.openbb_terminal",
    "~/OpenBBUserData",
  ]
end
