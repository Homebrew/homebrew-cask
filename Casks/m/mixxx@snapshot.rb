cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "33ac7132b8d8df1f2d3f5b3ec2fd8ccceca427710e67e22d6728ac8f30860352",
         intel: "ce9964139365f5edc4cb3ed3f94279153e8c29a3f45badaf0a0d95bebfed3671"

  on_arm do
    version "2.7-alpha-322-gdeda627b1b"
  end
  on_intel do
    version "2.7-alpha-322-gdeda627b1b"
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
