cask "seam-app" do
  version "0.0.9"
  sha256 "b079c0c15ce9146e7ac1ef61e5578e0ab22ac7ec7a97f9e57238cae541bb963f"

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
