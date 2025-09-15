cask "eddie" do
  arch arm: "arm64", intel: "x64"

  version "2.24.6"
  sha256 arm:   "821aafcaffea695bf938f671cce343d86416989f7f21d8db2d8bfe9aaa609d9c",
         intel: "d46a8e8cffce5b05708e2a096fad825487920d2d57e6eede1a523b0862a82291"

  url "https://eddie.website/download/?platform=macos-10.15&arch=#{arch}&ui=ui&format=disk.dmg&version=#{version}"
  name "Air VPN"
  name "Eddie"
  desc "OpenVPN UI"
  homepage "https://eddie.website/"

  # The homepage provides version information but it will frequently timeout.
  # We check GitHub releases as a best guess of when a new version is released.
  livecheck do
    url "https://github.com/AirVPN/Eddie"
    strategy :github_latest
  end

  app "Eddie.app"

  uninstall quit: "com.eddie.client"

  zap trash: [
    "~/.config/eddie",
    "~/Library/Preferences/org.airvpn.eddie.ui.plist",
  ]

  caveats do
    requires_rosetta
  end
end
