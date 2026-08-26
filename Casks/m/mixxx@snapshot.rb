cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "1071b92e9b6bdc00550c496faa5ca241eb26ce8f65d8373a7f2433ced52a4195",
         intel: "1fc796fac56e836d95775d0d7d7274ee151f81ca2b80500f5c6a742dfc8f29ac"

  on_arm do
    version "2.7-alpha-366-g816ce8b25b"
  end
  on_intel do
    version "2.7-alpha-367-g69cb2dfd0f"
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
