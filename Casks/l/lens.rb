cask "lens" do
  arch arm: "-arm64"

  version "2023.9.290703"
  sha256 arm:   "352b8abe9e9b4caea458381aadd6f0465191ae7822ced65b67c4f95c0c038009",
         intel: "5eb97bf9eb31888b119dcf62417be655198e147e8bfeb74afdb915426b431841"

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
