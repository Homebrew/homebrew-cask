cask "jet-pilot" do
  arch arm: "aarch64", intel: "x64"

  version "1.33.0"
  sha256  arm:   "6f2c1ea91c3728660df02ee03d61ce5027dc480e722f13b46337feae76de30bf",
          intel: "9a8bba082f87b9426d6e69e7d251d80ddcd54c74b05ecca0d61dd5a49ab05e43"

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
