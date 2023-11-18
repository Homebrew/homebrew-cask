cask "ovito" do
  arch arm: "arm64", intel: "intel"

  version "3.9.4"
  sha256 arm:   "77b9985349f86edc44768eb9c2b70373cdb5a6de23e043c92fe7466b71701a2b",
         intel: "fc46f0a18b566233d25f2269024d8a682ff0b4fdee318417d0cde71fb8f5ae21"

  url "https://www.ovito.org/download/master/ovito-basic-#{version}-macos-#{arch}.dmg"
  name "OVITO"
  desc "Scientific data visualization and analysis software"
  homepage "https://www.ovito.org/"

  livecheck do
    url "https://www.ovito.org/os-downloads/"
    regex(/version\s(\d+(?:\.\d+)*)/i)
    strategy :page_match
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
