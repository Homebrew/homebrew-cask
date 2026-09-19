cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "206f6f52092dbf617395498f851b2e733d98f96927e5119542e0da47daf76312",
         intel: "6a7559de346f5f69be7c30e7f5911fec3558ae344ab9e68f342e730fc892cfcc"

  on_arm do
    version "2.7-alpha-396-g81a5eb877f"
  end
  on_intel do
    version "2.7-alpha-396-g81a5eb877f"
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
