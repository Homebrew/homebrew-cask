cask "kiibohd-configurator" do
  version "1.1.0"
  sha256 "996abcfd4f05420199e0302be50d9e878bd28bb50f541b5f6886a1654862e20f"

  url "https://github.com/kiibohd/configurator/releases/download/v#{version}/kiibohd-configurator-#{version}-mac.dmg",
      verified: "github.com/kiibohd/configurator/"
  name "Kiibohd Configurator"
  desc "Modular community keyboard firmware"
  homepage "https://kiibohd.com/"

  depends_on formula: "dfu-util"

  app "Kiibohd Configurator.app"

  uninstall quit: "club.input.KiibohdConfigurator"

  zap trash: [
    "~/Library/Application Support/kiibohd-configurator",
    "~/Library/Logs/Kiibohd Configurator",
    "~/Library/Preferences/club.input.KiibohdConfigurator.plist",
    "~/Library/Saved Application State/club.input.KiibohdConfigurator.savedState",
  ]
end
