cask "font-sudo" do
  version "3.0.2"
  sha256 "e1304c45e4aad086c055c9f14ca77eef2a496af892960c189b111c811adcd6cc"

  url "https://github.com/jenskutilek/sudo-font/releases/download/v#{version}/sudo.zip",
      verified: "github.com/jenskutilek/sudo-font/"
  name "Sudo"
  homepage "https://www.kutilek.de/sudo-font/"

  font "sudo/Sudo-Bold.ttf"
  font "sudo/Sudo-BoldItalic.ttf"
  font "sudo/Sudo-ExtraLight.ttf"
  font "sudo/Sudo-ExtraLightItalic.ttf"
  font "sudo/Sudo-Italic.ttf"
  font "sudo/Sudo-Light.ttf"
  font "sudo/Sudo-LightItalic.ttf"
  font "sudo/Sudo-Regular.ttf"
  font "sudo/Sudo-SemiBold.ttf"
  font "sudo/Sudo-SemiBoldItalic.ttf"
  font "sudo/SudoUI-Bold.ttf"
  font "sudo/SudoUI-BoldItalic.ttf"
  font "sudo/SudoUI-ExtraLight.ttf"
  font "sudo/SudoUI-ExtraLightItalic.ttf"
  font "sudo/SudoUI-Italic.ttf"
  font "sudo/SudoUI-Light.ttf"
  font "sudo/SudoUI-LightItalic.ttf"
  font "sudo/SudoUI-Regular.ttf"
  font "sudo/SudoUI-SemiBold.ttf"
  font "sudo/SudoUI-SemiBoldItalic.ttf"
  font "sudo/SudoUIVariable.ttf"
  font "sudo/SudoVariable.ttf"

  # No zap stanza required
end
