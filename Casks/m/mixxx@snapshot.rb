cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "aec8fe26705ca22c0a253f7134a4f73e3e12b9cc6a5c726137ec4e9f90665e4e",
         intel: "5fadf678605721257183c17e663846e003411384e2b3a291d24fc9a55116a2fb"

  on_arm do
    version "2.7-alpha-444-g22f7951737"
  end
  on_intel do
    version "2.7-alpha-444-g22f7951737"
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
