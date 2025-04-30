cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  version "2.7-alpha"
  sha256 arm:   "8648233772a12906fe4ef3e7f78472f3549c2b3c90e799a461bcedcb581d50a2",
         intel: "102bd866bb8885caed4d0355e11df9da3eda465a3f958776ba2ca754f355cac7"

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
  depends_on macos: ">= :catalina"

  app "Mixxx.app"

  zap trash: [
    "~/Library/Application Scripts/org.mixxx.mixxx",
    "~/Library/Containers/org.mixxx.mixxx",
    "~/Music/Mixxx",
  ]
end
