cask "seam-app" do
  version "0.0.5"
  sha256 "833844229459d22357acbd2a12972f540403e14019592ca2668faa22bda293ae"

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
