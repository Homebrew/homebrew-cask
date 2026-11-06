cask "mushroom" do
  version "1.66.0,168"
  sha256 "96d9b3a74b409cc182dce8ac46b14cd0665c95455672170cf87601d32aecb881"

  # The versioned name, never the Mushroom.dmg alias: that one changes under the same URL every release.
  url "https://dl.getmushroom.app/Mushroom-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Mushroom"
  desc "Pixel-art desktop pet that reminds you to drink water and take breaks"
  homepage "https://www.getmushroom.app/"

  livecheck do
    url "https://dl.getmushroom.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Mushroom.app"

  zap trash: [
    "~/Library/Application Scripts/com.qubit.shroomy.app.share",
    "~/Library/Application Support/com.qubit.shroomy.app",
    "~/Library/Caches/com.qubit.shroomy.app",
    "~/Library/Containers/com.qubit.shroomy.app.share",
    "~/Library/HTTPStorages/com.qubit.shroomy.app",
    "~/Library/Preferences/com.qubit.shroomy.app.plist",
  ]
end
