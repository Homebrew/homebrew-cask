cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "0d0cf672d98c5025db8a931ca41e8437b84ea667dd2fe969e2596e4e02037043",
         intel: "6e40faf15d14147accb3048acc8eda9fac01ecba4c70d9539c2f30409ba32cc1"

  on_arm do
    version "2.7-alpha-329-g24bb6e77e9"
  end
  on_intel do
    version "2.7-alpha-329-g24bb6e77e9"
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
