cask "pangolin" do
  version "0.8.4"
  sha256 "b444e65d8b7fcef5a3a254a4753e7f1c28818b94fd0898c6f43823a1af8a54ac"

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
