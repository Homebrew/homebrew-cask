cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "925afb15ee081300728cf74134e5a084a7f87e2cda2f753ebae3526abea035b4",
         intel: "3228cd04aa2c2d2593796a48def3ef657a6b4d22a8ae243e40fb106af11c53bd"

  on_arm do
    version "2.7-alpha-317-g2d5be33c0c"
  end
  on_intel do
    version "2.7-alpha-317-g2d5be33c0c"
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
