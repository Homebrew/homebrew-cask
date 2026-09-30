cask "pangolin" do
  version "0.12.0"
  sha256 "17155c4b788451efe04bed8a33377d466cc97d259ca314cd62d121e573860bf0"

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
