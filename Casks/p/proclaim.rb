cask "proclaim" do
  arch arm: "-arm"

  version "4.10.0.0169"
  sha256 arm:   "7b08a00b54f566978d4e937f03cf6ad56dfd73e1f895208551bde14a9f73169e",
         intel: "0dd9403b3b1f3290b4f22bba1a1fb39ebd32eb04c7ddeef4f77b4ca02487e3e9"

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
  depends_on macos: ">= :big_sur"

  app "Proclaim.app"

  zap trash: [
    "~/Library/Application Support/Proclaim",
    "~/Library/Preferences/com.logos.Proclaim.plist",
    "~/Library/Saved Application State/com.logos.Proclaim.savedState",
  ]
end
