cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "793c773e7c4bde3f4c43ea1f49f8447f5bac24013a0e9e5c8ead6cf160011c90",
         intel: "a3b6bce4e180c306b297e6bd4a346beda7034c73b8bff51e9c174ae84900adf3"

  on_arm do
    version "2.7-alpha-349-g9e670c1120"
  end
  on_intel do
    version "2.7-alpha-349-g9e670c1120"
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
