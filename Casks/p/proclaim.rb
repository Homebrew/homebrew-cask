cask "proclaim" do
  arch arm: "-arm"

  version "4.22.0.0097"
  sha256 arm:   "f02c545b1e7d98562d26c9ae9f2d0ec5dbac59e0772e6896b447297ceccfd6d7",
         intel: "9a6efd7d71d8dbdc5235e4269be7e37b45ed8ecb5da163418387bccb1d33a2cc"

  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim#{arch}.dmg"
  name "Proclaim"
  desc "Church presentation software"
  homepage "https://proclaim.logos.com/"

  livecheck do
    url "https://clientservices.logos.com/update/v1/feed/proclaim-mac/stable.xml"
    strategy :xml do |xml|
      xml.get_elements("//logos:version")&.map { |item| item.text&.strip }
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Proclaim.app"

  zap trash: [
    "~/Library/Application Support/Proclaim",
    "~/Library/Preferences/com.logos.Proclaim.plist",
    "~/Library/Saved Application State/com.logos.Proclaim.savedState",
  ]
end
