cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "53e36b6faacd23798c547786af36fb0dc0763a235a0efc386171378937c6e0ee",
         intel: "5afa69f90297f03fc00669d82b858092abba5cf7a4cdf8ba2952830393eb30ba"

  on_arm do
    version "2.7-alpha-375-g5adc3efebf"
  end
  on_intel do
    version "2.7-alpha-375-g5adc3efebf"
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
