cask "seam-app" do
  version "1.14.6"
  sha256 "72dc5bcc07241403bcbbb0f1661eb7a803fe1fe420b540ddcb17f4c22c921299"

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
