cask "routine" do
  arch arm: "-arm64"

  version "0.14.7"
  sha256 arm:   "ce45cc1799de2291fb6046af607de79611b50ca6a5263c759e9690f6c7033e24",
         intel: "d60d2693ae9e0d927b034f6ee1982674b13a48d86472c6f11bd075d07dc7fed4"

  url "https://releases.routine.co/routine/osx#{arch}/Routine-#{version}.zip"
  name "Routine"
  desc ""
  homepage "https://www.routine.co/"

  livecheck do
    url "https://releases.routine.co/routine/osx#{arch}/stable.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  auto_updates true

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
