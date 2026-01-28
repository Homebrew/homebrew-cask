cask "seam-app" do
  version "0.0.13"
  sha256 "a7fcca5b9345da75448033bce49fe22ba70ca959953c4ed9ea23eef28786f4b6"

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
