cask "apidog-europe" do
  # Do not merge this PR. This is a testing PR.
  version "2.5.10"
  sha256 "7b0bc3345d2ef91e793690f802453f1d8973da59fd070873b7aa79fec3a1d23f"

  url "https://assets.eu.apidog.com/download/#{version}/Apidog%20Europe-#{version}.dmg"
  name "Apidog Europe"
  desc "API development platform hosted in Europe"
  homepage "https://apidog.com/"

  livecheck do
    url "https://api.eu.apidog.com/api/v1/configs/client-updates/latest/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Apidog Europe.app"

  zap trash: [
    "~/Library/Application Support/apidog-eu",
    "~/Library/Preferences/com.apidog.eu.app.plist",
    "~/Library/Saved Application State/com.apidog.eu.app.savedState",
  ]
end
