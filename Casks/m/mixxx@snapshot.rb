cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "0f72124fcfa5c9661710046502dfd41cb24eb618adc975a38177559f1cbc9eca",
         intel: "1a514fb7431d48ea6cf521d0333cf7ea3cdf8c82a5996f395d6bf23059bc6ad7"

  on_arm do
    version "2.7-alpha-385-g6b385d2aeb"
  end
  on_intel do
    version "2.7-alpha-385-g6b385d2aeb"
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
