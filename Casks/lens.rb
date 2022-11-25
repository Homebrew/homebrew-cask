cask "lens" do
  arch arm: "-arm64"

  version "2022.11.251411"
  sha256 arm:   "4e9cc6ec2a78bf9636cf41b767842d560dc38b325917b3e14e086c152949e2a7",
         intel: "af950a136c8bf1f82d1255e91cfc52439642a0a5fd47574edfc1f48555ec7717"

  url "https://api.k8slens.dev/binaries/Lens-#{version}-latest#{arch}.dmg"
  name "Lens"
  desc "Kubernetes IDE"
  homepage "https://k8slens.dev/"

  livecheck do
    url "https://lens-binaries.s3.amazonaws.com/ide/latest-mac.yml"
    strategy :electron_builder do |data|
      data["version"].sub("-latest", "")
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
