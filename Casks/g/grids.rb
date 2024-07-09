cask "grids" do
  version "8.5.8"
  sha256 "61522452b57cfe5cfd023b4c01cdd5d3a8a491535fc9a15ea2940fe974c468c9"

  url "https://gridsapp.net/bin/Grids_#{version}.zip"
  name "Grids"
  desc "Instagram desktop application"
  homepage "https://gridsapp.net/"

  livecheck do
    url "https://gridsapp.net/appcast.json"
    strategy :json do |json|
      json.dig("version", "mac")
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
