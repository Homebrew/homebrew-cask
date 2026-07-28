cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "68cacf3d7666129bef6e5e1f8e9c126915715f403d9082a51f289717324413f7",
         intel: "bc32fb0b244ab019888f608766516b78f89da7f566212bc64cf8ed29901acd29"

  on_arm do
    version "2.7-alpha-327-g3a9efedbb5"
  end
  on_intel do
    version "2.7-alpha-327-g3a9efedbb5"
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
