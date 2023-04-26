cask "openbb-terminal" do
  arch arm: "ARM64", intel: "x86.64"

  version "3.0.0"
  sha256 arm:   "d0ce35f094072fb860c9491d47729ca52c5bddbb1c848c9a4d5bcb4fa12641b7",
         intel: "9c451b4932c1d34c7eaf8c1605218aeb7d7192012b085ee8fab3e93017562018"

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

  suite "OpenBB Terminal"
  pkg "#{arch}.MacOS.OpenBB.Terminal.v#{version}.pkg"

  zap trash: [
    "~/.openbb_terminal",
    "~/OpenBBUserData",
  ]
end
