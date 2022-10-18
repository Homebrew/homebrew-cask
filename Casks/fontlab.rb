cask "fontlab" do
  version "8.0.1.8249"
  sha256 "47d7307cf3ffc9e5c0ce205be5b854827d073db58a54898c3796c93bb8805f19"

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
