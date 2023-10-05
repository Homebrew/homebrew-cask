cask "openbb-terminal" do
  # raised an issue about the x86.64 typo, https://github.com/OpenBB-finance/OpenBBTerminal/issues/5405
  arch arm: "ARM64", intel: "x86.64"

  version "3.2.3"
  sha256 arm:   "7c4496baa7064ada15fe6c120a0a584cc0320bf08a224c467ffb047ee7ca529e",
         intel: "a39edbc27f00cda860970090acddc4b4d46c1634581793b40e9620e41a216b0e"

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
