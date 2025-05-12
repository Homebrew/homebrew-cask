cask "ovito-pro" do
  arch arm: "arm64", intel: "intel"

  on_arm do
    version "3.12.3"
    sha256 "dc94f3e248456ed711e2cb559e3eb4910f404d774c896af6bb5e8c50d6700c88"
  end
  on_intel do
    version "3.12.0"
    sha256 "09c3a773fac3426b376065234c24d5ea0c7b9b58d77456212e6e14ceb9ca7888"
  end

  url "https://www.ovito.org/download/master/ovito-pro-#{version}-macos-#{arch}.dmg"
  name "OVITO Pro"
  desc "Scientific data visualization and analysis software"
  homepage "https://www.ovito.org/"

  livecheck do
    url "https://www.ovito.org/download_history/"
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
