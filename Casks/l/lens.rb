cask "lens" do
  arch arm: "-arm64"

  version "2024.4.230844"
  sha256 arm:   "7c39e46ce50318b3b27b5bd25c9948590ff3db087266122f44c31b63a1d94bc9",
         intel: "030b510c1971d599c6e98535a752b8107f8a59799fbd6dcd5f7edbb96e0fbde9"

  url "https://api.k8slens.dev/binaries/Lens-#{version}-latest#{arch}.dmg"
  name "Lens"
  desc "Kubernetes IDE"
  homepage "https://k8slens.dev/"

  livecheck do
    url "https://api.k8slens.dev/binaries/latest-mac.json/"
    regex(/(\d+(?:\.\d+)+)/i)
    strategy :json do |json|
      json["version"].sub("-latest", "")
    end
  end

  auto_updates true

  app "Lens.app"

  zap trash: [
    "~/Library/Application Support/Lens",
    "~/Library/Caches/Lens",
    "~/Library/Preferences/com.electron.kontena-lens.plist",
    "~/Library/Saved Application State/com.electron.kontena-lens.savedState",
  ]
end
