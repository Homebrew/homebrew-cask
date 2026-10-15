cask "seam-app" do
  version "1.17.3"
  sha256 "8a9a24f72b6f49c27de4170532093df744348d03516049df904a47d7f86f9b35"

  url "https://releases.getseam.app/#{version}/Seam.dmg"
  name "Seam"
  desc "Productivity-first Dynamic Island for your Notch"
  homepage "https://getseam.app/"

  livecheck do
    url "https://releases.getseam.app/latest/release.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Seam.app"

  zap trash: [
    "~/Library/Caches/app.seam",
    "~/Library/Caches/app.seam.Seam",
    "~/Library/HTTPStorages/app.seam.Seam",
    "~/Library/Logs/Seam",
    "~/Library/Preferences/app.seam.Seam.plist",
    "~/Library/Preferences/seam.app.plist",
  ]
end
