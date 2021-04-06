cask "balenaetcher" do
  version "1.5.117"
  sha256 "b8872eb9e0790220627f95317fa2d3661a53727e26fbbfb9c5832955e6df16fd"

  url "https://github.com/balena-io/etcher/releases/download/v#{version}/balenaEtcher-#{version}.dmg",
      verified: "github.com/balena-io/etcher/"
  name "Etcher"
  desc "Tool to flash OS images to SD cards & USB drives"
  homepage "https://balena.io/etcher"

  livecheck do
    url :url
    strategy :github_latest
  end

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
