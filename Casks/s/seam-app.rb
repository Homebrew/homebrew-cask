cask "seam-app" do
  version "0.1.0"
  sha256 "79aa0b0217e4d03f7df2d5e95255cce457b91a133fa74e26a831085240eca369"

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
