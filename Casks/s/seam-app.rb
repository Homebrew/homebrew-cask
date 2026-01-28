cask "seam-app" do
  version "0.0.10"
  sha256 "46b75a18d68ffd3c7e3ab00111e050477387a52e6c25e134c0eaf703895965d2"

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
