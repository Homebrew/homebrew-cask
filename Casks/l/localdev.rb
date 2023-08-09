cask "localdev" do
  version "1.3.1"
  sha256 "e7c43628b4f82a725fd43047647374e6cd1d0ac3196e67e74705b75561c71e9c"

  url "https://pantheon-localdev.s3.amazonaws.com/Localdev-v#{version}.dmg",
      verified: "pantheon-localdev.s3.amazonaws.com/"
  name "Localdev"
  desc "Development interface for Pantheon"
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

  caveats do
    discontinued
  end
end
