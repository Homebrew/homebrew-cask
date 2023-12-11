cask "routine" do
  arch arm: "-arm64"

  version "0.17.2"
  sha256 arm:   "84fb67a3af463e8677274b0e0ecb7151a900febf8cc8d95cfdd98fb642e93c1e",
         intel: "e5c5e8713e45168d1618e6c4fd3a54565438c32ecffa95b085c93c2e59ace7b4"

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
