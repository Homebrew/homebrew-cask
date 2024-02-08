cask "openbb-terminal" do
  # raised an issue about the x86.64 typo, https://github.com/OpenBB-finance/OpenBBTerminal/issues/5405
  arch arm: "ARM64", intel: "x86.64"

  version "3.2.4"
  sha256 arm:   "658a195afc1656a372733f6b9d2860fd431644652f5cb4af17d4de532c06a1db",
         intel: "95c3b32a98ed3614614c10684dba25356dbe7eec91706cc11ae5cc304ccddaef"

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
