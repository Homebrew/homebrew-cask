cask "balenaetcher" do
  version :latest
  sha256 :no_check

  url "https://github.com/balena-io/etcher/releases/download/v1.8.14/balenaEtcher-1.8.14.dmg",
      verified: "github.com/balena-io/etcher/"
  name "Etcher"
  desc "Tool to flash OS images to SD cards & USB drives"
  homepage "https://balena.io/etcher"

  app "balenaEtcher.app"

  uninstall quit: "io.balena.etcher.*"

  zap trash: [
    "~/Library/Application Support/balena-etcher",
    "~/Library/Preferences/io.balena.etcher.helper.plist",
    "~/Library/Preferences/io.balena.etcher.plist",
    "~/Library/Saved Application State/io.balena.etcher.savedState",
  ]

  caveats <<~EOS
    #{token} is no longer updated in homebrew-cask due to the maintenance demand of multiple stable releases per day.
  EOS
end
