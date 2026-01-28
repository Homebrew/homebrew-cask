cask "seam-app" do
  version "0.0.8"
  sha256 "3486af51d3575dc18fa21640fca8dd749db70e99fc60e61ead108fbb8e0c4e02"

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
