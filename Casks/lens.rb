cask "lens" do
  arch arm: "-arm64"

  version "6.0.1,20220810.2"
  sha256 arm:   "ae8c9d62db5501515e4a3b653c49fe797cf272dd2b8f243bba98d215670a8f05",
         intel: "70e95fd69f41a123006e7da17983eaf88670b0c76a0c0a532612d442caf6d861"

  url "https://api.k8slens.dev/binaries/Lens-#{version.csv.first}-latest.#{version.csv.second}#{arch}.dmg"
  name "Lens"
  desc "Kubernetes IDE"
  homepage "https://k8slens.dev/"

  livecheck do
    url "https://lens-binaries.s3.amazonaws.com/ide/latest-mac.yml"
    strategy :electron_builder do |data|
      data["version"].sub("-latest.", ",")
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
