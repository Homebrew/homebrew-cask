cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "96cfd347256c6c40bfe91c54a2390bfaf2004c7734802ff9b357a82547211490",
         intel: "0a734e2e0443983168aa60c39c8a157fa0de01e7c4d09af0a47aeb37b9c2503a"

  on_arm do
    version "2.7-alpha-350-gb50c527c96"
  end
  on_intel do
    version "2.7-alpha-350-gb50c527c96"
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
