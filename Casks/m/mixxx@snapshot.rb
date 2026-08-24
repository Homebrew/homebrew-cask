cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "36bd16d57bd51118fb61d73a4d895c19799336521eefd1d314fd12d7d754b66e",
         intel: "71ef21cc3a8c9be5799892a6087c973e297f8b105752e9899b4b2815d282e716"

  on_arm do
    version "2.7-alpha-359-g451252eb0a"
  end
  on_intel do
    version "2.7-alpha-359-g451252eb0a"
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
