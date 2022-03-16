cask "balenaetcher" do
  
  version "1.7.7"
  
  if Hardware::CPU.intel?
    sha256 "61a8835661e22854204cbd0c9948312f2641be8e02eea43d5c507f369b167972"
    url "https://github.com/balena-io/etcher/releases/download/v#{version}/balenaEtcher-#{version}.dmg",
      verified: "github.com/balena-io/etcher/"
  else
    sha256 "f273b2ea65a0edcf0334230b62234e81e617880ee2e99db12fa93424d7a8921a"
    url "https://github.com/Augmentedjs/balena-io-etcher-builds/releases/download/v#{version}/balenaEtcher-#{version}.dmg",
      verified: "github.com/Augmentedjs/balena-io-etcher-builds/"
  end

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
