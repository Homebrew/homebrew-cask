cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "14a94914ac653dc9b9035f723830617c270df26f6c71f607f5474c0af5c7f447",
         intel: "22faf6ea44b0ab35ba12432ba190fda28dc40e269c0761f475d8ccaef4d541e8"

  on_arm do
    version "2.7-alpha-410-g3695b2062e"
  end
  on_intel do
    version "2.7-alpha-410-g3695b2062e"
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
