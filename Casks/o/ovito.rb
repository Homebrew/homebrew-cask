cask "ovito" do
  arch arm: "arm64", intel: "intel"

  on_arm do
    version "3.14.1"
    sha256 "44c7e07d0a54a41af4921d522c8c028e189ab5e279fe54025dbcf8682ce688a8"
  end
  on_intel do
    version "3.12.0"
    sha256 "735b7f1388ddd1a895308c943f3808bdec3c070bab9ef177e5f106cc6cca293e"
  end

  url "https://www.ovito.org/download/master/ovito-basic-#{version}-macos-#{arch}.dmg"
  name "OVITO"
  desc "Scientific data visualization and analysis software"
  homepage "https://www.ovito.org/"

  livecheck do
    url "https://www.ovito.org/download_history/"
    regex(/href=.*?ovito[._-]basic[._-]v?(\d+(?:\.\d+)+)(?:[._-]macos)?[._-]#{arch}\.dmg/i)
  end

  auto_updates true
  conflicts_with cask: "ovito-pro"

  app "Ovito.app"

  zap trash: [
    "~/Library/Preferences/org.ovito.Ovito.plist",
    "~/Library/Saved Application State/org.ovito.savedState",
  ]
end
