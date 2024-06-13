cask "font-bungee" do
  version "2.000"
  sha256 "475c443ada44d5530debcf49703ef6871b968fbc0967676b3e1b0852b812b750"

  url "https://github.com/djrrb/bungee/releases/download/v#{version}/Bungee-fonts.zip",
      verified: "github.com/djrrb/bungee/"
  name "Bungee"
  homepage "https://djr.com/bungee/"

  font "Bungee-fonts/Bungee_Basic/Bungee-Regular.ttf"
  font "Bungee-fonts/Bungee_Basic/BungeeHairline-Regular.ttf"
  font "Bungee-fonts/Bungee_Basic/BungeeInline-Regular.ttf"
  font "Bungee-fonts/Bungee_Basic/BungeeOutline-Regular.ttf"
  font "Bungee-fonts/Bungee_Basic/BungeeShade-Regular.ttf"
  font "Bungee-fonts/Bungee_Color/BungeeColor-Regular.ttf"
  font "Bungee-fonts/Bungee_Color/BungeeSpice-Regular.ttf"
  font "Bungee-fonts/Bungee_Layers/BungeeLayers-Regular.ttf"
  font "Bungee-fonts/Bungee_Layers/BungeeLayersInline-Regular.ttf"
  font "Bungee-fonts/Bungee_Layers/BungeeLayersOutline-Regular.ttf"
  font "Bungee-fonts/Bungee_Layers/BungeeLayersShade-Regular.ttf"
  font "Bungee-fonts/Bungee_Rotated/BungeeRotated-Regular.ttf"
  font "Bungee-fonts/Bungee_Rotated/BungeeRotatedInline-Regular.ttf"
  font "Bungee-fonts/Bungee_Rotated/BungeeRotatedOutline-Regular.ttf"
  font "Bungee-fonts/Bungee_Rotated/BungeeRotatedShade-Regular.ttf"

  # No zap stanza required
end
