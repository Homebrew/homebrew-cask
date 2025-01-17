cask "lens" do
  arch arm: "-arm64"

  version "2025.1.161916"
  sha256 arm:   "48787c632750cec1c1a3621de00b5428a2e6c9a79b1501cacaa3e0a15eb70177",
         intel: "8a296ca83adf349b08b16ca352297668399005b118792dad1196e1012a880b1f"

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
  depends_on macos: ">= :catalina"

  app "Lens.app"

  zap trash: [
    "~/Library/Application Support/Lens",
    "~/Library/Caches/Lens",
    "~/Library/Preferences/com.electron.kontena-lens.plist",
    "~/Library/Saved Application State/com.electron.kontena-lens.savedState",
  ]
end
