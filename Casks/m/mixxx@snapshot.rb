cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "3ca855598fa294a397f7810d9565e1303146dd8fc7939a95567eed6bfe00630c",
         intel: "6ee3c615ef09a48c6120b9a85ba5612e450a8512e70b25d606311cdf7f217e77"

  on_arm do
    version "2.7-alpha-445-g825e45199b"
  end
  on_intel do
    version "2.7-alpha-445-g825e45199b"
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
