cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "e43a86559e243a8df3eba09a985646f4451a40ff958d8f7a5cfba17a7e4a5805",
         intel: "e7ba0c66f55ac1a682be3535180d5bf29ed7c4cf19ad615066cca220530dd542"

  on_arm do
    version "2.7-alpha-368-g545040613d"
  end
  on_intel do
    version "2.7-alpha-368-g545040613d"
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
