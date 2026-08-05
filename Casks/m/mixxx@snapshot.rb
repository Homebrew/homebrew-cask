cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "082c415beb35d64183ea92972bf89849a057178f7ab5a1ab016a309208b722cf",
         intel: "50778ca6cbc62e1646e128188cd1ddf2aaa92632743e882bbbdce8adf3d6f61a"

  on_arm do
    version "2.7-alpha-344-gb37722a189"
  end
  on_intel do
    version "2.7-alpha-344-gb37722a189"
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
