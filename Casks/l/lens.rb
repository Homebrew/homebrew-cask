cask "lens" do
  arch arm: "-arm64"

  version "2024.9.300059"
  sha256 arm:   "75a3a12016c50406d8ac4c71839c093604fc124b14a85f535d8a3ab6cf2f0059",
         intel: "94180c4c4e9df2dc0fc267ec4c8b9a3b280b1bc3f85041d50b1f8478d0425b72"

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
