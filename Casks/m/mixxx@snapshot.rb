cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  on_arm do
    version "2.7-alpha-277-gfa34e0b60b"
    sha256 "b67b627b1d95883f4d7e48b559bfd4d5e8f00894c4f8fe49d759316f8fc5bedb"
  end
  on_intel do
    version "2.7-alpha-276-ge3e2f63a15"
    sha256 "f7971d1fa2793421d84581fa7dae344958a67b94c0cee1faede11b8d6ab069b7"
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
