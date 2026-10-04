cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "9e547399d380f40dbfff071990141690f054195c367376b22fe2711266c6be58",
         intel: "9e1721012e1f7c811dfa611835e85ef33d6b1d7167bb5fbc5c23850eb9b91ce3"

  on_arm do
    version "2.7-alpha-416-ge9a6171dde"
  end
  on_intel do
    version "2.7-alpha-416-ge9a6171dde"
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
