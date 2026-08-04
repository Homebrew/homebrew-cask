cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "b60584094cffe082fb2fac866323e68693899319b26af6c5ebdb2110738774a4",
         intel: "4d69ebb827ce3c54c1cf398ff4ce80d8b9f2c64b18a8bd845ffd63de7c8cfaf3"

  on_arm do
    version "2.7-alpha-341-g3334b48d56"
  end
  on_intel do
    version "2.7-alpha-341-g3334b48d56"
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
