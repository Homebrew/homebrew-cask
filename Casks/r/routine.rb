cask "routine" do
  arch arm: "-arm64"

  version "1.0.3"
  sha256 arm:   "eb3a39ddfe2cec9b1716139146fc1f18747576cc2f49ae62e3ce25db1450b09a",
         intel: "a5bcf75c5f1e43bf64d1f3f1ba0c4f6263cbba3fb7388b83c75d7f375be2ce8d"

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
