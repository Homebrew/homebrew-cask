cask "balenaetcher" do
  arch arm: "arm64", intel: "x64"

  version "1.19.0"
  sha256 arm:   "8b885afc72ae1cff988b399044b49cfeffa87f206b047385f09fcc68dcd5845f",
         intel: "2c6da9bb0f69adead0b7b4d603d06794bc490ce3a55db1ce82b103555cf3eee1"

  url "https://github.com/balena-io/etcher/releases/download/v#{version}/balenaEtcher-#{version}-#{arch}.dmg",
      verified: "github.com/balena-io/etcher/"
  name "Etcher"
  desc "Tool to flash OS images to SD cards & USB drives"
  homepage "https://balena.io/etcher"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "balenaEtcher.app"

  uninstall quit: "io.balena.etcher.*"

  zap trash: [
    "~/Library/Application Support/balena-etcher",
    "~/Library/Preferences/io.balena.etcher.helper.plist",
    "~/Library/Preferences/io.balena.etcher.plist",
    "~/Library/Saved Application State/io.balena.etcher.savedState",
  ]
end
