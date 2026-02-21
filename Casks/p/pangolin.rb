cask "pangolin" do
  version "0.5.0"
  sha256 "c701353617df1976cb2592f60c62d02e678d371e10c2885027c9737c715ae7dd"

  url "https://pangolin.net/api/downloads/proxy?url=https%3A%2F%2Fgithub.com%2Ffosrl%2Fapple%2Freleases%2Fdownload%2Fmac-#{version}%2FPangolin_Installer_#{version}.dmg"
  name "Pangolin"
  desc "Identity-aware VPN and proxy for remote access"
  homepage "https://pangolin.net/"

  livecheck do
    url "https://static.pangolin.net/mac-client/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Pangolin.app"

  zap trash: [
    "~/Library/Application Support/Pangolin",
    "~/Library/Preferences/net.pangolin.Pangolin.plist",
  ]
end
