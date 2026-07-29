cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "7baa8982200c8226c7a16864ef28dffe466f28eb7d62417bf6f447a1be6406c6",
         intel: "3d64273377c85c8dcb9946c46d3bdfcdc7c9d2bd5c4f13f86d478973aac3240e"

  on_arm do
    version "2.7-alpha-328-g4f82202eca"
  end
  on_intel do
    version "2.7-alpha-328-g4f82202eca"
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
