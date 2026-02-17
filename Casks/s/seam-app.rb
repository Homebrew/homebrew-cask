cask "seam-app" do
  version "1.1.2"
  sha256 "29b51ad6937f95d184e3ce59af50d037d00115c4d24c5eb9bdd6f32c655121e9"

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
  depends_on macos: ">= :sonoma"

  app "Seam.app"

  zap trash: [
    "~/Library/Caches/app.seam",
    "~/Library/Logs/Seam",
    "~/Library/Preferences/seam.app.plist",
  ]
end
