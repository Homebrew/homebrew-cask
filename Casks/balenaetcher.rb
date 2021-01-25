cask "balenaetcher" do
  version "1.5.115"
  sha256 "e7cc3e8ba27311b190c200b589b5730b4a349e7558463c358eb1902fe90926ba"

  url "https://github.com/balena-io/etcher/releases/download/v#{version}/balenaEtcher-#{version}.dmg",
      verified: "github.com/balena-io/etcher/"
  appcast "https://github.com/balena-io/etcher/releases.atom"
  name "Etcher"
  desc "Tool to flash OS images to SD cards & USB drives"
  homepage "https://balena.io/etcher"

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
