cask "localdev" do
  version "0.12.0"
  sha256 "e5e8d9620cd5c67e5a497855b20dde44ff8d482edeae984363d7ba1eed7d296b"

  url "https://pantheon-localdev.s3.amazonaws.com/Localdev-v#{version}.dmg",
      verified: "pantheon-localdev.s3.amazonaws.com/"
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
