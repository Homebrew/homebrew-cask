cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "0712c12f091cfaeb19912fbc25ed3674c63d110e53c4c36845853ae21c517cb4",
         intel: "875443ba82a1f29dc1159bf24e7f7e36582411b82ec03d638f4387392d075c3f"

  on_arm do
    version "2.7-alpha-383-g649e7f41c4"
  end
  on_intel do
    version "2.7-alpha-383-g649e7f41c4"
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
