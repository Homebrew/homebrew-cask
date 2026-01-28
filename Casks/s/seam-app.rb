cask "seam-app" do
  version "0.1.0"
  sha256 "a54bb0a6fe10fe3dc05ef242deb2061a086ff20fdfeab463171a753f58b71a9e"

  url "https://releases.getseam.app/#{version}/Seam.dmg"
  name "Seam"
  desc "Dynamic Island with system HUDs and notifications"
  homepage "https://getseam.app/"

  livecheck do
    url "https://releases.getseam.app/latest/release.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Seam.app"

  zap trash: [
    "~/Library/Caches/app.seam",
    "~/Library/Logs/Seam",
    "~/Library/Preferences/seam.app.plist",
  ]
end
