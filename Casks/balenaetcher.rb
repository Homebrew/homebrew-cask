cask "balenaetcher" do
  version "1.5.109"
  sha256 "fbd73817aa5c49a0cccd01baf083e93e0a8973948c838ba5e23904d2fa6d6461"

  # github.com/balena-io/etcher/ was verified as official when first introduced to the cask
  url "https://github.com/balena-io/etcher/releases/download/v#{version}/balenaEtcher-#{version}.dmg"
  appcast "https://github.com/balena-io/etcher/releases.atom"
  name "Etcher"
  desc "Tool to flash OS images to SD cards & USB drives"
  homepage "https://balena.io/etcher"

  auto_updates true

  app "balenaEtcher.app"

  uninstall quit: [
    "com.github.Squirrel",
    "com.github.electron.framework",
    "io.balena.etcher.*",
    "org.mantle.Mantle",
    "org.reactivecocoa.ReactiveCocoa",
  ]

  zap trash: [
    "~/Library/Application Support/balena-etcher",
    "~/Library/Preferences/io.balena.etcher.helper.plist",
    "~/Library/Preferences/io.balena.etcher.plist",
    "~/Library/Saved Application State/io.balena.etcher.savedState",
  ]
end
