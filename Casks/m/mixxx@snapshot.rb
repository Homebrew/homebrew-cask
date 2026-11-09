cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "74ca637bf95200723b812149dba2dc714e36fea1f20b428196592043a216005a",
         intel: "397d688593f308b9ce4d957f853df290ed9853035832bc78ec7e5858eb8b5cf9"

  on_arm do
    version "2.7-alpha-438-g489b47a99d"
  end
  on_intel do
    version "2.7-alpha-438-g489b47a99d"
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
