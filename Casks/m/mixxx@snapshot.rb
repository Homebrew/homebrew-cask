cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  on_arm do
    version "2.7-alpha-138-g09b6d3d774"
    sha256 "504b3f5d03d98371b28b49133c396f4a06540c42522cba3f8f24569ec3c6ce93"
  end
  on_intel do
    version "2.7-alpha-137-g1d48bbcd10"
    sha256 "06578fd4564296c37a46e13d91ea5077e99191b67f7017d9d8a90ebc9fe8a63f"
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
  depends_on macos: ">= :big_sur"

  app "Mixxx.app"

  zap trash: [
    "~/Library/Application Scripts/org.mixxx.mixxx",
    "~/Library/Containers/org.mixxx.mixxx",
    "~/Music/Mixxx",
  ]
end
