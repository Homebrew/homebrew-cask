cask "routine" do
  arch arm: "-arm64"

  version "2.3.1"
  sha256 arm:   "61e4efd10acd46b5d76c724c9c3ec4f28432ef8f528177e5e7ff80d92eb515bb",
         intel: "65952bf9851d3d2615c8b654d94b096e85aaa21f9c94e6d2550d9cbed6984696"

  url "https://releases.routine.co/routine/osx#{arch}/Routine-#{version}.zip"
  name "Routine"
  desc "Calendar for productive people"
  homepage "https://www.routine.co/"

  livecheck do
    url "https://releases.routine.co/routine/osx#{arch}/stable.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  auto_updates true
  depends_on :macos

  app "Routine.app"

  zap trash: [
    "~/Library/Application Support/Routine",
    "~/Library/Caches/co.routine.desktop",
    "~/Library/Caches/co.routine.desktop.ShipIt",
    "~/Library/HTTPStorages/co.routine.desktop",
    "~/Library/Preferences/co.routine.desktop.plist",
    "~/Library/Saved Application State/co.routine.desktop.savedState",
  ]
end
