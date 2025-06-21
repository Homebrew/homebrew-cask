cask "jet-pilot" do
  arch arm: "aarch64", intel: "x64"

  version "1.35.0"
  sha256 arm:   "1c02e47d3ccade9abfa7851a53c7f4a1c279bb190144e5a9d1630c9244224530",
         intel: "a12d15baddf6000d6f3e70817598cca219ce2ac31fc44dcbb3422229b27645ef"

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
