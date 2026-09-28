cask "mixxx@snapshot" do
  arch arm: "arm", intel: "intel"

  sha256 arm:   "3597d361f40217cee0ca28724b62eb945741ddfaf08e5067baabd9f36264422f",
         intel: "f5648e371dcba2c60badabdff46dda94ccc2c19b62bc4ac017bf60efe3864b58"

  on_arm do
    version "2.7-alpha-406-gb8f9407114"
  end
  on_intel do
    version "2.7-alpha-406-gb8f9407114"
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
