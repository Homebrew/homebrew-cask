cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "b648e30d3ed22c6a2104be13f7b2993884632eb786b14d5d07ddc6879344b0d9",
         intel: "a96218adf87ac61aabf847a564c5b0b26beade36102587c1e8442ab7be74c73a"

  on_arm do
    version "2.7-alpha-397-g896f5b37ad"
  end
  on_intel do
    version "2.7-alpha-397-g896f5b37ad"
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
