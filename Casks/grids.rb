cask "grids" do
  version "8.5.5"
  sha256 "44e3b30ab2a3cd1d1df978f7acae162cd12f33f17a849e6771762e950c2a1aa3"

  url "https://gridsapp.net/bin/Grids_#{version}.zip"
  name "Grids"
  desc "Instagram desktop application"
  homepage "https://gridsapp.net/"

  livecheck do
    url "https://gridsapp.net/appcast.json"
    strategy :json do |json|
      json["version"]["mac"]
    end
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Grids.app"

  uninstall quit: "com.thinktimecreations.Grids"

  zap trash: [
    "~/Library/Application Support/ThinkTimeCreations/Grids",
    "~/Library/Preferences/com.thinktimecreations.Grids.plist",
    "~/Library/Saved Application State/com.thinktimecreations.Grids.savedState",
  ]
end
