cask "ovito" do
  arch arm: "arm64", intel: "intel"

  version "3.10.3"
  sha256 arm:   "f444ef8cb899275e0cdeea5cee15b10bc339e2f4cdaff67e076e3e34719b4142",
         intel: "8855fa30257f973850f70fc2f04526f0ffc032c2a630d5a662b82168304cb997"

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
