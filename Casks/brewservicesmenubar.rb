cask "brewservicesmenubar" do
  version "4.0"
  sha256 "79735a498e5191e513f6912718b6529c354e15886011848a56f4f2415d135169"

  url "https://github.com/andrewn/brew-services-menubar/releases/download/v#{version}/BrewServicesMenubar-v#{version}.zip"
  name "Brew Services Menubar"
  desc "Menu item for starting and stopping homebrew services"
  homepage "https://github.com/andrewn/brew-services-menubar"

  app "BrewServicesMenubar.app"

  uninstall quit: "andrewnicolaou.BrewServicesMenubar"
end
