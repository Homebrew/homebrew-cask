cask "elpass" do
  version "1.5.2,474"
  sha256 "a66b77b6e44b2860c6aea8ae80251d0437f279983eae1a56cd8aeef1fa232ba0"

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
