cask "routine" do
  arch arm: "-arm64"

  version "0.25.5"
  sha256 arm:   "9a79ac6a466e02d734899dcb2901252f4cbed6086532357a3907502f2eb86c48",
         intel: "0bf85c7cf1d5b67acd1ce2dd47874434105bd371feafeafba4a60dcae09e50b3"

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
  depends_on macos: ">= :big_sur"

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
