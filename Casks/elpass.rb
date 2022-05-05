cask "elpass" do
  version "1.4.5,437"
  sha256 "3d4bf6b47efb1481ec2f97ecf5c14c54c642581629323209c9122576129895df"

  url "https://elpass.app/macos/Elpass-#{version.csv.first}-#{version.csv.second}.zip"
  name "Elpass"
  desc "Password manager"
  homepage "https://elpass.app/"

  livecheck do
    url "https://elpass.app/macos/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Elpass.app"

  zap trash: [
    "~/Library/Application Support/app.elpass.macos",
    "~/Library/Caches/app.elpass.macos",
    "~/Library/Group Containers/YCKFLA6N72.app.elpass.macos.group",
    "~/Library/Preferences/app.elpass.macos.plist",
  ]
end
