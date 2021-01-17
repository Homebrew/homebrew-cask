cask "grids" do
  version "6.1.6"
  sha256 "c3bd41b364b2151a06e542d60e341a19458b4641d67f6fefe6813cc78529762e"

  url "https://gridsapp.net/bin/Grids_#{version}.zip"
  appcast "https://gridsapp.net/appcast.json"
  name "Grids"
  desc "Instagram desktop application"
  homepage "https://gridsapp.net/"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Grids.app"

  uninstall quit: "com.thinktimecreations.Grids"

  zap trash: [
    "~/Library/Application Support/ThinkTimeCreations/Grids",
    "~/Library/Preferences/com.thinktimecreations.Grids.plist",
  ]
end
