cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "4190588c7679114aebc4ca552a55da5bf52655e7ce1414cdb0be1097b8176efc",
         intel: "951e8dc6a426561c1913cc90fa02409f6d06e08097db5023e22336d68f3b3b52"

  on_arm do
    version "2.7-alpha-356-g3aa50fd3a7"
  end
  on_intel do
    version "2.7-alpha-356-g3aa50fd3a7"
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
