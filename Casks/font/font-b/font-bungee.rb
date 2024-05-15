cask "font-bungee" do
  version "1.2.1"
  sha256 "b6ff37d099140cb82c143622a097b95154265931735e84ef2105957976bb1bd0"

  url "https://github.com/djrrb/bungee/releases/download/v#{version}/Bungee-fonts.zip",
      verified: "github.com/djrrb/bungee/"
  name "Bungee"
  desc "Fonts for vertical and multicolor typography"
  homepage "https://djr.com/bungee/"

  font "Bungee-fonts/Bungee_Basic/Bungee-Regular.ttf"
  font "Bungee-fonts/Bungee_Basic/BungeeHairline-Regular.ttf"
  font "Bungee-fonts/Bungee_Basic/BungeeInline-Regular.ttf"
  font "Bungee-fonts/Bungee_Basic/BungeeOutline-Regular.ttf"
  font "Bungee-fonts/Bungee_Basic/BungeeShade-Regular.ttf"
  font "Bungee-fonts/Bungee_Desktop/Bungee/Bungee-Hairline.otf"
  font "Bungee-fonts/Bungee_Desktop/Bungee/Bungee-Inline.otf"
  font "Bungee-fonts/Bungee_Desktop/Bungee/Bungee-Outline.otf"
  font "Bungee-fonts/Bungee_Desktop/Bungee/Bungee-Regular.otf"
  font "Bungee-fonts/Bungee_Desktop/Bungee/Bungee-Shade.otf"
  font "Bungee-fonts/Bungee_Desktop/BungeeColor/BungeeColor-Regular-COLRv0.ttf"
  font "Bungee-fonts/Bungee_Desktop/BungeeColor/BungeeColor-Regular-SVG.ttf"
  font "Bungee-fonts/Bungee_Desktop/BungeeColor/BungeeSpice-Regular-COLRv1.ttf"
  font "Bungee-fonts/Bungee_Desktop/BungeeLayers/BungeeLayers-Inline.otf"
  font "Bungee-fonts/Bungee_Desktop/BungeeLayers/BungeeLayers-Outline.otf"
  font "Bungee-fonts/Bungee_Desktop/BungeeLayers/BungeeLayers-Regular.otf"
  font "Bungee-fonts/Bungee_Desktop/BungeeLayers/BungeeLayers-Shade.otf"
  font "Bungee-fonts/Bungee_Desktop/BungeeLayersRotated/BungeeLayersRotated-Inline.otf"
  font "Bungee-fonts/Bungee_Desktop/BungeeLayersRotated/BungeeLayersRotated-Outline.otf"
  font "Bungee-fonts/Bungee_Desktop/BungeeLayersRotated/BungeeLayersRotated-Regular.otf"
  font "Bungee-fonts/Bungee_Desktop/BungeeLayersRotated/BungeeLayersRotated-Shade.otf"

  # No zap stanza required
end
