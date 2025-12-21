cask "routine" do
  arch arm: "-arm64"

  version "0.24.0"
  sha256 arm:   "88b49709d6bc38f1988a3fc5eac79a7d7e02e50e8d3ffa9d14cdadbf3685c8b5",
         intel: "003e11ff0ccb972ee1f7f3c18bb0ce76b2155abf0a3c965deb84b89fd043f71d"

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
