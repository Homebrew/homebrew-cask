cask "routine" do
  arch arm: "-arm64"

  version "0.19.11"
  sha256 arm:   "050f3e2cf5fe4b11f7f29b8a1dd9cb54dbeef4af297e1e8764ccf3ea8aec7b4a",
         intel: "52d7d191a78e721ca94b093c645f6c3c7b1aacf9429206bcc90c5d930ceef14c"

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
