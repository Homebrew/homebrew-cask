cask "routine" do
  arch arm: "-arm64"

  version "2.1.0"
  sha256 arm:   "c7ce2b8300ef159e6b0c4518c1e035cb3b92604923131889303740c6466f6866",
         intel: "6342a8d1c589957dae5427b017207a8dc664ed7e6469f2a508ab49db14a23c19"

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
  depends_on macos: :big_sur

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
