cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  version "2.7-alpha-185-gd9801d53d0"
  sha256 arm:   "a9319f1756b24b13578127455ea914c467afc7325e57db2f9ead997744851e14",
         intel: "03b8fe97725d5c71dadad938dd1136d32118030d06823b1a2747a9640dd7ed73"

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
  depends_on macos: ">= :big_sur"

  app "Mixxx.app"

  zap trash: [
    "~/Library/Application Scripts/org.mixxx.mixxx",
    "~/Library/Containers/org.mixxx.mixxx",
    "~/Music/Mixxx",
  ]
end
