cask "openbb-terminal" do
  arch arm: "ARM64", intel: "x86.64"

  version "3.0.1"
  sha256 arm:   "2091879e6defdab9f1c6fd0f1dd1383f47be35418404f17754d02d785bebbbfe",
         intel: "421cbe89108dc3b04d18a5e3a7fcb26baba42e830662accd654545738417bb5a"

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
