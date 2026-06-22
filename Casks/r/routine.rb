cask "routine" do
  arch arm: "-arm64"

  version "1.1.1"
  sha256 arm:   "f6d0f02d3e3322a61b4e96a9654fb7438b15ea071991042e472164d2b0e26f8f",
         intel: "b8c1a462364027d4d35d50e910bdd4cdeb7fff2be897bb351ede6c9393f64fb9"

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
