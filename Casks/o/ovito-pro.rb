cask "ovito-pro" do
  arch arm: "arm64", intel: "intel"

  version "3.10.4"
  sha256 arm:   "15deb866bdae0826bc0672868127e686612c48248e2b101c6b1e83f90ba623fd",
         intel: "222330155cb82a098191b61f9927ef781babb8098c8ac491718c59cb7d1c71f6"

  url "https://www.ovito.org/download/master/ovito-pro-#{version}-macos-#{arch}.dmg"
  name "OVITO Pro"
  desc "Scientific data visualization and analysis software"
  homepage "https://www.ovito.org/"

  livecheck do
    url :homepage
    regex(/href=.*?ovito[._-]pro[._-]v?(\d+(?:\.\d+)+)(?:[._-]macos)?[._-]#{arch}\.dmg/i)
  end

  auto_updates true
  conflicts_with cask: "ovito"
  depends_on macos: ">= :mojave"

  app "Ovito.app"

  zap trash: [
    "~/Library/Preferences/org.ovito.Ovito.plist",
    "~/Library/Saved Application State/org.ovito.savedState",
  ]
end
