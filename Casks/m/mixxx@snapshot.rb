cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "cbd4418707f719a4f657d4adc06e19bf28b70803aa7dd906c637b98a7d6b13af",
         intel: "ccd4b4f8981143e886537ba887a5e58aebbd4f2fa415e34be8ab2307652bc56c"

  on_arm do
    version "2.7-alpha-336-ga55cbaad87"
  end
  on_intel do
    version "2.7-alpha-336-ga55cbaad87"
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
