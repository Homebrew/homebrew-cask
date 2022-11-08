cask "balenaetcher" do
  version "1.8.14"
  sha256 "4c3ca69f01e72c0c0e677cb1572bb887cc3cc146cfbe1aaf198cbab2266ed68d"

  url "https://github.com/balena-io/etcher/releases/download/v#{version}/balenaEtcher-#{version}.dmg",
      verified: "github.com/balena-io/etcher/"
  name "Etcher"
  desc "Tool to flash OS images to SD cards & USB drives"
  homepage "https://balena.io/etcher"

  livecheck do
    skip "homebrew-cask has discontinued support due to extremely frequent releases"
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

  caveats <<~EOS
    Support for future updates of #{token} has been discontinued in homebrew-cask
    due to extremely frequent stable releases.
  EOS
end
