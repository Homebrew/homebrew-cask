cask "fontlab" do
  version "8.4.0.8898"
  sha256 "ab4d5259bf4d728499cbf7253287f259800e7ab75d8f3c509216bb35575c6e5c"

  url "https://fontlab.s3.amazonaws.com/fontlab-#{version.major}/#{version.split(".").last}/FontLab-#{version.major}-Mac-Install-#{version.split(".").last}.dmg",
      verified: "fontlab.s3.amazonaws.com/"
  name "Fontlab"
  desc "Professional font editor"
  homepage "https://www.fontlab.com/font-editor/fontlab/"

  livecheck do
    url "https://download.fontlab.com/fontlab-#{version.major}/appcast-mac.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "FontLab #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/FontLab",
    "~/Library/Preferences/com.fontlab.fontlab#{version.major}.plist",
    "~/Library/Saved Application State/com.fontlab.fontlab#{version.major}.savedState",
  ]
end
