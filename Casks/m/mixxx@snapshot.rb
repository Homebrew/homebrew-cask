cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "ff355ff43eb597f42715c32b8354f4111327392cfcc7bb60b7511d57e4de9244",
         intel: "8e2a8a4047e5f2402ba46be6ce37a895267ced85b977c69c94291d4815507b18"

  on_arm do
    version "2.7-alpha-347-gab848eb756"
  end
  on_intel do
    version "2.7-alpha-347-gab848eb756"
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
