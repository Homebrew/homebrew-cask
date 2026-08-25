cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "7546803df84453fa9f6ea015b547e7036fbc816fa641629238555b00e29452d5",
         intel: "cf44beb445895c31c3afa3275083504e460176f65f9c3547fdd38f44a5c3d9d4"

  on_arm do
    version "2.7-alpha-362-g80eb0938d3"
  end
  on_intel do
    version "2.7-alpha-362-g80eb0938d3"
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
