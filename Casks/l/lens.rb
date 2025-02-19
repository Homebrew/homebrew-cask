cask "lens" do
  arch arm: "-arm64"

  version "2025.2.141554"
  sha256 arm:   "06d212152356237b4eb29a79e7d6ca8ea59890becb229314ade183eb87763610",
         intel: "a5b9c2f93d75e51f797f409377b8fa10da60b94bccf78693f32c02b1f6a18c13"

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
