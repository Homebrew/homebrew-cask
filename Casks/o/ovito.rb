cask "ovito" do
  arch arm: "arm64", intel: "intel"

  version "3.11.2"
  sha256 arm:   "7afc455004249482ad59497bf37f3140a5ac59c7cda464453292528dbfcb5299",
         intel: "0d09da86432a33c8b9da9253790ba8c0a8d1c8d796da3e4320e77e7dbcd6f270"

  url "https://www.ovito.org/download/master/ovito-basic-#{version}-macos-#{arch}.dmg"
  name "OVITO"
  desc "Scientific data visualization and analysis software"
  homepage "https://www.ovito.org/"

  livecheck do
    url :homepage
    regex(/href=.*?ovito[._-]basic[._-]v?(\d+(?:\.\d+)+)(?:[._-]macos)?[._-]#{arch}\.dmg/i)
  end

  auto_updates true
  conflicts_with cask: "ovito-pro"
  depends_on macos: ">= :mojave"

  app "Ovito.app"

  zap trash: [
    "~/Library/Preferences/org.ovito.Ovito.plist",
    "~/Library/Saved Application State/org.ovito.savedState",
  ]
end
