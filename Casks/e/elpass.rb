cask "elpass" do
  version "2.0.0,529"
  sha256 "936f4a3ec8151931169d3a242485510d9e7e10802851a805ebf25c1b3a11d326"

  url "https://elpass.app/macos/Elpass-#{version.csv.first}-#{version.csv.second}.zip"
  name "Elpass"
  desc "Password manager"
  homepage "https://elpass.app/"

  livecheck do
    url "https://elpass.app/macos/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: :monterey

  app "Elpass.app"

  zap trash: [
    "~/Library/Application Support/app.elpass.macos",
    "~/Library/Caches/app.elpass.macos",
    "~/Library/Group Containers/YCKFLA6N72.app.elpass.macos.group",
    "~/Library/Preferences/app.elpass.macos.plist",
  ]
end
