cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "a5867e2775b251707c41dc260032ecfc72a7fd70c1631cecc17630579752f11f",
         intel: "5a6e3f9779de84fb41fda6075b6886126e1f06c1317674defe6969a84acf9b2d"

  on_arm do
    version "2.7-alpha-319-g337154fdeb"
  end
  on_intel do
    version "2.7-alpha-319-g337154fdeb"
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
