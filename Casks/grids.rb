cask "grids" do
  version "7.0.14"
  sha256 "17e40bf37342be5718631ea4b35a4c4cfdcb3cd28729181c816cae408b4e553a"

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
