cask "routine" do
  arch arm: "-arm64"

  version "0.17.3"
  sha256 arm:   "c77454ebc2f1115156a5cc488ded96fe34a464e67c7d4ee9d88de611aa5d2bf4",
         intel: "2daa06c281185e7d38d74311303f12486d4b82ba6d1cc1fbf30f6bb3a3876398"

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
  depends_on macos: ">= :high_sierra"

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
