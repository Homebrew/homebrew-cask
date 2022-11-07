cask "balenaetcher" do
  version "1.7.11"
  sha256 "c40912872851d535158e76dd1d4d97dfdbaf2ad80d8f6fb9add4f30bdf230df0"

  url "https://github.com/balena-io/etcher/releases/download/v#{version}/balenaEtcher-#{version}.dmg",
      verified: "github.com/balena-io/etcher/"
  name "Etcher"
  desc "Tool to flash OS images to SD cards & USB drives"
  homepage "https://balena.io/etcher"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "balenaEtcher.app"

  uninstall quit: "io.balena.etcher.*"

  zap trash: [
    "~/Library/Application Support/balena-etcher",
    "~/Library/Preferences/io.balena.etcher.helper.plist",
    "~/Library/Preferences/io.balena.etcher.plist",
    "~/Library/Saved Application State/io.balena.etcher.savedState",
  ]
end
