cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "f1eff3d59ebcb7005994fdf3e26936c3b2bdcd0f3dac4f06158d27ede3a44ea3",
         intel: "141916df59e099b660fbd26c4572beb2676e5e7a44b89f8075295a4c8c28690f"

  on_arm do
    version "2.7-alpha-335-g8ff0afe7db"
  end
  on_intel do
    version "2.7-alpha-335-g8ff0afe7db"
  end

  url "https://downloads.mixxx.org/snapshots/main/mixxx-#{version}-macos#{arch}.dmg"
  name "Mixxx"
  desc "Open-source DJ software"
  homepage "https://www.mixxx.org/"

  livecheck do
    url "https://downloads.mixxx.org/snapshots/main/manifest.json"
    strategy :json do |json|
      json.dig("macos-macos#{arch}", "git_describe")
    end
  end

  conflicts_with cask: "mixxx"
  depends_on macos: :big_sur

  app "Mixxx.app"

  zap trash: [
    "~/Library/Application Scripts/org.mixxx.mixxx",
    "~/Library/Containers/org.mixxx.mixxx",
    "~/Music/Mixxx",
  ]
end
