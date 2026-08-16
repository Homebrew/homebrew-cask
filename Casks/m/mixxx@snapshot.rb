cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "05543ecbf100cb7e29f3947a207d5cbe7d01019a2e2be0c1500789bf91f32154",
         intel: "e327005b1ffdbff5975119ded8624c2097c9e9c07e3bb62aefc74ed42d985036"

  on_arm do
    version "2.7-alpha-351-g6d9be24690"
  end
  on_intel do
    version "2.7-alpha-351-g6d9be24690"
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
