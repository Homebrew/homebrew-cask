cask "elpass" do
  version "1.5.3,476"
  sha256 "c4b5cdbf16ab0f2759cf0c9aa34c15d27b609b886098cc0c8ff5c1d3b466b0aa"

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
