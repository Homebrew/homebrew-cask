cask "ovito" do
  arch arm: "arm64", intel: "intel"

  version "3.11.0"
  sha256 arm:   "9fe60d08ab14a451b12dd456c33f22bcfc4e6ab4f5fd1d2ae79e57c57b482505",
         intel: "3950205df5fe5bd7add29e8c39758d87fed1b958e22e731847cfe8a2eb53db65"

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
