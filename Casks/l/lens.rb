cask "lens" do
  arch arm: "-arm64"

  version "2024.3.271133"
  sha256 arm:   "8a002092d2d8c41a1a271bfde7c4f6dbe152dec5bbbda2858e712f82fee7dc92",
         intel: "0b3ab74f923f78125a7acbb1fcdf804a37d56232ed77fb0566890e035d081c12"

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
