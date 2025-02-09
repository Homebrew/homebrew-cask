cask "jet-pilot" do
  arch arm: "aarch64", intel: "x64"

  version "1.34.0"
  sha256  arm:   "1588374c73026e639d6b74db70861be773dd65e5a32ec0993cc95e6c2c72820e",
          intel: "ca0807b5a169b32d740667f335699605d96f966adfcfe4876c3d42a07e241fb2"

  url "https://github.com/unxsist/jet-pilot/releases/download/v#{version}/JET.Pilot_#{version}_#{arch}.dmg",
      verified: "github.com/unxsist/jet-pilot/"
  name "JET Pilot"
  desc "Kubernetes desktop client"
  homepage "https://www.jet-pilot.app/"

  livecheck do
    url "https://updates.jet-pilot.app/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "JET Pilot.app"

  zap trash: "~/Library/Application Support/com.unxsist.jetpilot"
end
