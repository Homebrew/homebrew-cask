cask "lens" do
  arch arm: "-arm64"

  version "2024.11.131815"
  sha256 arm:   "ca4f8e1c448ae44caee7d3298e89386aaba788091b66a32d99e32151ed88c73a",
         intel: "9973a9d75df633b44996f83e12a80eca6ca2f17fc4aa3bc705dfd81cbb5cf463"

  url "https://api.k8slens.dev/binaries/Lens-#{version}-latest#{arch}.dmg"
  name "Lens"
  desc "Kubernetes IDE"
  homepage "https://k8slens.dev/"

  livecheck do
    url "https://api.k8slens.dev/binaries/latest-mac.json/"
    strategy :json do |json|
      json["version"]&.sub("-latest", "")
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
