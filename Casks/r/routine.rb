cask "routine" do
  arch arm: "-arm64"

  version "0.25.0"
  sha256 arm:   "7c30ea94da0506efc76526d7d406728dac785169adebd535ae1641c4fcf0a816",
         intel: "35146c7eea7d7cb8626ff87164c44653dd6c35956e6a2a72c60f1b807a5efcbf"

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
