cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "d48622b6065605207e129b8f45e4625c58ad2c7516bfa60f2fc49ca5130980f6",
         intel: "047585b7dc29a1e38e3566add6dd9f15180d2f80fc773583b87bf1c1cea0fc6d"

  on_arm do
    version "2.7-alpha-440-g25b8af3902"
  end
  on_intel do
    version "2.7-alpha-440-g25b8af3902"
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
  depends_on :macos

  app "Mixxx.app"

  zap trash: [
    "~/Library/Application Scripts/org.mixxx.mixxx",
    "~/Library/Containers/org.mixxx.mixxx",
    "~/Music/Mixxx",
  ]
end
