cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "d2c8ca81c0e2d37a4542c9ed7696f7c2674da5cfa5ede6bbcb4571d84287be33",
         intel: "ed256701caee83e7b31c800e13abdde9baf5b084fb5f6836520a654444b877a1"

  on_arm do
    version "2.7-alpha-315-gb76579d161"
  end
  on_intel do
    version "2.7-alpha-315-gb76579d161"
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
