cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "b91cd3850834ec066404a028336d93819fae619e328d3ca4915116da385718cc",
         intel: "9d7aca186152337503d4f81d405539fef0bda38389139259d487c7568136287d"

  on_arm do
    version "2.7-alpha-374-gee8c888cf9"
  end
  on_intel do
    version "2.7-alpha-374-gee8c888cf9"
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
