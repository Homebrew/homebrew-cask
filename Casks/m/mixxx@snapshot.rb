cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "3ad63d6064fd9ad173fcee4e0a4f8eaca9ec62aa65af5f43d2d7bbd1b47b677a",
         intel: "51403f585726836d28ad5114ac5d48ed870b46b55d0a864c3422f09eba4d94e3"

  on_arm do
    version "2.7-alpha-393-g4b80e23a89"
  end
  on_intel do
    version "2.7-alpha-393-g4b80e23a89"
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
