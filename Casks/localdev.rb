cask "localdev" do
  version "1.3.1"
  sha256 "946f49215c4559f28ebf8b183698f986c3de0baa8d1e10d2cdd1fbe44fb9d9f2"

  url "https://pantheon-localdev.s3.amazonaws.com/Localdev-v#{version}.dmg",
      verified: "pantheon-localdev.s3.amazonaws.com/"
  name "Localdev"
  homepage "https://pantheon.io/localdev"

  livecheck do
    url "https://pantheon-localdev.s3.amazonaws.com/latest-mac.yml"
    strategy :electron_builder
  end

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
