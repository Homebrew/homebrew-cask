cask "proclaim" do
  arch arm: "-arm"

  version "4.15.0.0200"
  sha256 arm:   "87d7434d3fc03866f8d5fab2783bb0c1d8f1c2bb73164400b152a6e3c786b21c",
         intel: "210bcacd12f53a5f896bb6bd8615e669b142ff907243db4fda9e28fa7aaa563f"

  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version}/Proclaim#{arch}.dmg",
      verified: "logoscdn.com/Proclaim/"
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
  depends_on macos: ">= :monterey"

  app "Proclaim.app"

  zap trash: [
    "~/Library/Application Support/Proclaim",
    "~/Library/Preferences/com.logos.Proclaim.plist",
    "~/Library/Saved Application State/com.logos.Proclaim.savedState",
  ]
end
