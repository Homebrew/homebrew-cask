cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  on_arm do
    version "2.7-alpha-282-g880625627f"
    sha256 "d9a45c6e187a414565c4c9cf2713ded60b29dafb9cc12c806ce933633b01278a"
  end
  on_intel do
    version "2.7-alpha-283-gbf7063b22c"
    sha256 "d8000b9da1c904d7c263bf1dea44b4b4ca279ff5b1be7c9b1cf1436f42f46ff8"
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
