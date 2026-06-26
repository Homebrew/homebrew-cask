cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  version "2.7-alpha-295-g89daac3ec0"
  sha256 arm:   "efd141ade6f97f439b79919f4ffe236e68de26c65d526e256a6aea99e5d3407d",
         intel: "28f57912102a60402f200c6b8546245340530d3343d095e3d0bfb3d7a7a0857a"

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
