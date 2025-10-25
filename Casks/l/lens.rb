cask "lens" do
  arch arm: "-arm64"

  version "2025.10.230725"
  sha256 arm:   "beace928053b9e53734c1e5cf0805d28e9e7bcd2800b58d5651cee6ff606d613",
         intel: "365f62bf82b6b6af3c5c33000590c7937189d40e91aa665cf76903fa8009009c"

  url "https://api.k8slens.dev/binaries/Lens-#{version}-latest#{arch}.dmg"
  name "Lens"
  desc "Kubernetes IDE"
  homepage "https://k8slens.dev/"

  livecheck do
    url "https://api.k8slens.dev/binaries/latest-mac.yml"
    strategy :electron_builder do |yaml|
      yaml["version"]&.sub("-latest", "")
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Lens.app"

  zap trash: [
    "~/Library/Application Support/Lens",
    "~/Library/Caches/Lens",
    "~/Library/Preferences/com.electron.kontena-lens.plist",
    "~/Library/Saved Application State/com.electron.kontena-lens.savedState",
  ]
end
