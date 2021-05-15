cask "grids" do
  version "7.0.7"
  sha256 "4cf94cfd34952e88826cb3a46a3bc5f94600553d489ab9807770cbe980e5f72f"

  url "https://gridsapp.net/bin/Grids_#{version}.zip"
  name "Grids"
  desc "Instagram desktop application"
  homepage "https://gridsapp.net/"

  livecheck do
    url "https://gridsapp.net/appcast.json"
    regex(/"mac"\s*:\s*"v?(\d+(?:\.\d+)+)"/i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Grids.app"

  uninstall quit: "com.thinktimecreations.Grids"

  zap trash: [
    "~/Library/Application Support/ThinkTimeCreations/Grids",
    "~/Library/Preferences/com.thinktimecreations.Grids.plist",
  ]
end
