cask "hypercal" do
  version "0.0.110"
  sha256 "24ceef4f704d9304b8841cebfef98c834053e5e32cee541a23334d9bc51129ba"

  url "https://storage.googleapis.com/hypercal-downloads/Hypercal-#{version}-universal.dmg",
      verified: "storage.googleapis.com/hypercal-downloads/"
  name "Hypercal"
  desc "Privacy first calendar that connects your schedules and tasks into a single view"
  homepage "https://hypercal.app/"

  livecheck do
    url "https://updater-api.hypercal.app/download"
    strategy :header_match
  end

  app "Hypercal.app"

  zap trash: [
    "~/Library/Application Support/hypercal",
    "~/Library/Caches/app.hypercal.com",
    "~/Library/Caches/app.hypercal.com.ShipIt",
    "~/Library/HTTPStorages/app.hypercal.com",
    "~/Library/Logs/hypercal",
    "~/Library/Preferences/app.hypercal.com.plist",
    "~/Library/Saved Application State/app.hypercal.com.savedState",
    "/tmp/hypercal",
  ]
end
