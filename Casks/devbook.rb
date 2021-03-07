cask "devbook" do
  version :latest
  sha256 :no_check

  url "https://download.usedevbook.com/mac/dmg/x64"
  name "Devbook"
  desc "Search engine for developers"
  homepage "https://usedevbook.com/"

  app "Devbook.app"

  zap trash: [
    "~/Library/Application Support/com.foundrylabs.devbook/*",
  ]
end
