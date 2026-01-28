cask "seam-app" do
  version "0.0.11"
  sha256 "9703bb3ae7e78d823b283c3a8e3e967920974cc0f49dbd0f8726bc0f1bd51928"

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
