cask "seam-app" do
  version "1.18.16"
  sha256 "4c68d77a93ce4921da0584df00d328b6cf2d1a74d7628e328384dd31fcbca831"

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
