cask "fontlab" do
  version "8.0.0.8203"
  sha256 "521f1fb91f6248ca9ad42a659bf44e284a273b8113c0fbaa2dddbb73a91d4af1"

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
