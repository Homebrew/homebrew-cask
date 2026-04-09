cask "seam-app" do
  version "1.4.9"
  sha256 "af85a0cec31110ed4175c181bce8c058f095fd29f4103666cd00f11ddf6487cd"

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
