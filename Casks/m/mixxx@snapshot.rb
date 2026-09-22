cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "2dce837476308d0172dd80d5987101df554943ae64dc0130d71dcc4524518980",
         intel: "f418b9e387d5a154af25ab60d733f26fc83bdef894e75bb0dc23df7ebfc44f6d"

  on_arm do
    version "2.7-alpha-402-gb19820b610"
  end
  on_intel do
    version "2.7-alpha-402-gb19820b610"
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
