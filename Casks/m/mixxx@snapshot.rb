cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "bba5856080b692d4f86ebeb49afafd2a412e56e2578e3afcebcb200f0de0200a",
         intel: "64b377efef9de77b0e95beaca1953d771e4041f0fcc7f5cf2ccbed8ec8cad4f4"

  on_arm do
    version "2.7-alpha-378-g1fafc264db"
  end
  on_intel do
    version "2.7-alpha-378-g1fafc264db"
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
