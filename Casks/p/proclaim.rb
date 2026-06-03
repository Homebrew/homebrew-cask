cask "proclaim" do
  arch arm: "-arm"

  version "4.18.0.0406"
  sha256 arm:   "bf6ac76c24f06ffdfaca8394b360552376f49a8323c58cdc05547c62402858a3",
         intel: "346ca3f88325ee40518332dcc83a9337f41522ea87c3ecb99991377abe5ca0a9"

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
  depends_on macos: :monterey

  app "Proclaim.app"

  zap trash: [
    "~/Library/Application Support/Proclaim",
    "~/Library/Preferences/com.logos.Proclaim.plist",
    "~/Library/Saved Application State/com.logos.Proclaim.savedState",
  ]
end
