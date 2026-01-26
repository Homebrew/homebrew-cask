cask "seam-app" do
  version "0.0.4"
  sha256 "e7b14939ee263377ca81851bb2689a9b060378af93a9e2dfda05fbe3a3bdc1b5"

  url "https://releases.getseam.app/#{version}/Seam.dmg"
  name "Seam"
  desc "Clean Dynamic Island for macOS"
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
