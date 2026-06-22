cask "routine" do
  arch arm: "-arm64"

  version "1.0.5"
  sha256 arm:   "c610a2816e199e54a7104eff40e58555742978904ce5391cd71c6a47db70c799",
         intel: "0a8a7eabf42e74e8e1af7cc5cc16fafaae895781386dd15bd49666724b0d4c5c"

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
