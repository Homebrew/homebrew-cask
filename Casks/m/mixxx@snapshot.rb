cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "d73473dee10cbd5322e5a5cb86435f6dff96ad9f9deb05da89392562b8b6db6e",
         intel: "87aeec00140a3a56a804c94d6922de2d6021e63744f8c113b32f0a1333587f22"

  on_arm do
    version "2.7-alpha-337-g307e421deb"
  end
  on_intel do
    version "2.7-alpha-337-g307e421deb"
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
