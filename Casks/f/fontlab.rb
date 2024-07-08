cask "fontlab" do
  version "8.4.0.8894"
  sha256 "75e59ab88539c1a6703486b53a57f09b9216a947d2c4867475e8c1f89168cc55"

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
  depends_on macos: ">= :mojave"

  app "FontLab #{version.major}.app"
end
