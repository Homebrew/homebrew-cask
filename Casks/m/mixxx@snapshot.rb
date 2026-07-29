cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "3a94261660f376df2a41e78908c0f32f3c41e92d4ff49c55e3d583c684d65939",
         intel: "6b129781dda0d496fb2e4d3943b799864a61591e350c2c25eb8b12a4ceb7ea9b"

  on_arm do
    version "2.7-alpha-330-gf7f2ae82eb"
  end
  on_intel do
    version "2.7-alpha-330-gf7f2ae82eb"
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
