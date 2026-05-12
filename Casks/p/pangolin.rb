cask "pangolin" do
  version "0.8.3"
  sha256 "de6d26494d2281df15a59b6fee811e95b19db49b968e6019f50ea3bdc0893b61"

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
