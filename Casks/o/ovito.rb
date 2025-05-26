cask "ovito" do
  arch arm: "arm64", intel: "intel"

  on_arm do
    version "3.12.4"
    sha256 "8a28727f151e6a5d5fec61f9cce0de8f931becd97ff79ee09cc815346ef3b1fb"
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
  depends_on macos: ">= :catalina"

  app "Ovito.app"

  zap trash: [
    "~/Library/Preferences/org.ovito.Ovito.plist",
    "~/Library/Saved Application State/org.ovito.savedState",
  ]
end
