cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "860acce2324c18e55cdf911d760757a272a000f649177f8c48427a723a7f2460",
         intel: "9e0ac7b3efa3c250ff7deb903f702f8b3c8f52b63080bac3e6f42e495c354d3d"

  on_arm do
    version "2.7-alpha-403-ga2ba5177d7"
  end
  on_intel do
    version "2.7-alpha-403-ga2ba5177d7"
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
