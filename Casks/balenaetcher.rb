cask "balenaetcher" do
  version "1.5.111"
  sha256 "6b648916eba761bbf4277e7c8a1121aa04434eeaa6f01ac866717675053f2881"

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
