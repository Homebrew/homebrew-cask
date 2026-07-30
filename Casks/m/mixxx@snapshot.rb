cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "12cbf8f74be0e34c9fc2f1e13a1e10ba741d08f0100c9c7082a6b19478c85fe1",
         intel: "b71b60bba0a97800d9cda6c9d61702731d6754057681a57680af54b1fbb1d2d5"

  on_arm do
    version "2.7-alpha-331-gc5a3104bc3"
  end
  on_intel do
    version "2.7-alpha-331-gc5a3104bc3"
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
