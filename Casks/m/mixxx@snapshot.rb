cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "597d57f934a88a378e950b35eea3ef896a2aaff13570f75cf96c45f56562ccb9",
         intel: "b89bc93a1ce11d4475d144762db3b81b941f3f112bb7a62d4db373a0da7d4d2d"

  on_arm do
    version "2.7-alpha-447-g902cfc2543"
  end
  on_intel do
    version "2.7-alpha-447-g902cfc2543"
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
