cask "pangolin" do
  version "0.13.0"
  sha256 "e9cbc4e312393d1c4b4ee64a24e86d30efc4e27a3c39ef91d1d8b6564fe509c9"

  url "https://pangolin.net/api/downloads/proxy?url=https%3A%2F%2Fgithub.com%2Ffosrl%2Fapple%2Freleases%2Fdownload%2Fmac-#{version}%2FPangolin_Installer_#{version}.dmg"
  name "Pangolin"
  desc "Identity-aware VPN and proxy for remote access"
  homepage "https://pangolin.net/"

  livecheck do
    url "https://static.pangolin.net/mac-client/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Pangolin.app"

  zap trash: [
    "~/Library/Application Support/Pangolin",
    "~/Library/Preferences/net.pangolin.Pangolin.plist",
  ]
end
