cask "proclaim" do
  arch arm: "-arm"

  version "4.17.0.0148"
  sha256 arm:   "7fbb877d29de55d547d028ab4e0533fa9ca0e83893e3f2ff8bb0f1d22ca490d4",
         intel: "b380ee136f18b95234eb8bf3cba9e1bdb50c70a121e5093aebd35be7a3877c1f"

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
