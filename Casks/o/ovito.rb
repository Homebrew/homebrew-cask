cask "ovito" do
  arch arm: "arm64", intel: "intel"

  version "3.12.0"
  sha256 arm:   "4cae59c87f289016565bca4eb6e3297356bbbc3560ca083fbf8b614830336c9c",
         intel: "735b7f1388ddd1a895308c943f3808bdec3c070bab9ef177e5f106cc6cca293e"

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
  depends_on macos: ">= :catalina"

  app "Ovito.app"

  zap trash: [
    "~/Library/Preferences/org.ovito.Ovito.plist",
    "~/Library/Saved Application State/org.ovito.savedState",
  ]
end
