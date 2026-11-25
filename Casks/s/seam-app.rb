cask "seam-app" do
  version "1.18.26"
  sha256 "c7baf77b1884ee35539effd27ce6581e186c3b1fe0b1bf6dc1c4eba3c54ad1d6"

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
