cask "ovito-pro" do
  arch arm: "arm64", intel: "intel"

  version "3.12.0"
  sha256 arm:   "fc52fd54cfa9e1febe751e83fb05d6a82f87e24b32dc6f165c77ce0f39adc763",
         intel: "09c3a773fac3426b376065234c24d5ea0c7b9b58d77456212e6e14ceb9ca7888"

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
  depends_on macos: ">= :catalina"

  app "Ovito.app"

  zap trash: [
    "~/Library/Preferences/org.ovito.Ovito.plist",
    "~/Library/Saved Application State/org.ovito.savedState",
  ]
end
