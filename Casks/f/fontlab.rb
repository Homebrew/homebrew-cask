cask "fontlab" do
  version "8.4.2.8950"
  sha256 "7891000fb57e699ed9067905efeee3b09a0e421b857234b12eafe65d06a46562"

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
