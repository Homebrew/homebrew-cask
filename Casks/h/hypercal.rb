cask "hypercal" do
  version "0.0.111"
  sha256 "30c78a5b6769fe58eda904f81f559e1b57a3703382d03ed18776b63c1861df38"

  url "https://storage.googleapis.com/hypercal-downloads/Hypercal-#{version}-universal.dmg",
      verified: "storage.googleapis.com/hypercal-downloads/"
  name "Hypercal"
  desc "Privacy first calendar that connects your schedules and tasks into a single view"
  homepage "https://hypercal.app/"

  disable! date: "2024-04-02", because: :no_longer_available

  app "Hypercal.app"

  zap trash: [
    "/tmp/hypercal",
    "~/Library/Application Support/hypercal",
    "~/Library/Caches/app.hypercal.com",
    "~/Library/Caches/app.hypercal.com.ShipIt",
    "~/Library/HTTPStorages/app.hypercal.com",
    "~/Library/Logs/hypercal",
    "~/Library/Preferences/app.hypercal.com.plist",
    "~/Library/Saved Application State/app.hypercal.com.savedState",
  ]
end
