cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "b1b74459af4528910cbb62ecdbfcbb902bb06ef6a98317db92cd970caf982af9",
         intel: "865786be21b7c9a599337a05f2f820f04c58be6c0db6a4c8394f1607efac76f6"

  on_arm do
    version "2.7-alpha-450-gf8d7c4e818"
  end
  on_intel do
    version "2.7-alpha-450-gf8d7c4e818"
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
  depends_on :macos

  app "Mixxx.app"

  zap trash: [
    "~/Library/Application Scripts/org.mixxx.mixxx",
    "~/Library/Containers/org.mixxx.mixxx",
    "~/Music/Mixxx",
  ]
end
