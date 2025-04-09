cask "elpass" do
  version "1.6.0,509"
  sha256 "d5b61faca4ff9eb80b6bc5c96954fbcaac92d8f36ac4c95e7a116e30d8263bf8"

  url "https://elpass.app/macos/Elpass-#{version.csv.first}-#{version.csv.second}.zip"
  name "Elpass"
  desc "Password manager"
  homepage "https://elpass.app/"

  livecheck do
    url "https://elpass.app/macos/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "Elpass.app"

  zap trash: [
    "~/Library/Application Support/app.elpass.macos",
    "~/Library/Caches/app.elpass.macos",
    "~/Library/Group Containers/YCKFLA6N72.app.elpass.macos.group",
    "~/Library/Preferences/app.elpass.macos.plist",
  ]
end
