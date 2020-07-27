cask "cura-lulzbot" do
  version "3.6.21,ce3e47a08065c6687f0a226a4f1b2dc3"
  sha256 "1548b15734ab2299f2fb8106e1b6f3242e5efe66286306f64b7675a0f354ff2c"

  # gitlab.com/lulzbot3d/cura-le/cura-lulzbot/ was verified as official when first introduced to the cask
  url "https://gitlab.com/lulzbot3d/cura-le/cura-lulzbot/uploads/#{version.after_comma}/cura-lulzbot_#{version.before_comma}.dmg"
  appcast "https://gitlab.com/lulzbot3d/cura-le/cura-lulzbot/-/tags?format=atom"
  name "Cura LulzBot Edition"
  homepage "https://www.lulzbot.com/learn/tutorials/cura-lulzbot-edition-installation-osx"

  app "cura-lulzbot.app"

  zap trash: [
    "~/.cura",
    "~/Library/Application Support/cura-lulzbot",
    "~/Library/Preferences/org.pythonmac.unspecified.cura-lulzbot.cura-lulzbot",
    "~/Library/Saved Application State/org.pythonmac.unspecified.cura-lulzbot.savedState",
  ]
end
