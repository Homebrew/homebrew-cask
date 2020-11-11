cask "localdev" do
  version "0.11.0"
  sha256 "7c7e095b69f549ff4372efd92c1cbbca8faba8b325c08b0316db941f9e88e00b"

  # pantheon-localdev.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://pantheon-localdev.s3.amazonaws.com/Localdev-v#{version}.dmg"
  name "Localdev"
  homepage "https://pantheon.io/localdev"

  app "Localdev.app"

  uninstall delete: [
    "~/Library/Application Support/localdev",
    "~/Library/Preferences/io.pantheon.local.helper.plist",
    "~/Library/Preferences/io.pantheon.local.plist",
  ]

  zap trash: [
    "~/Localdev",
    "~/.pantheonlocaldev",
  ]
end
