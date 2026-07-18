cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "33da61e1813cf2502ba51515988cf9ee473ad0155bda5b1ffb41e67ddcddc349",
         intel: "f4a7ec60c676eb9179b6df2af9b284a96b9f445bc14596554b13348d27e9f9a5"

  on_arm do
    version "2.7-alpha-324-g0ea94fde39"
  end
  on_intel do
    version "2.7-alpha-324-g0ea94fde39"
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
