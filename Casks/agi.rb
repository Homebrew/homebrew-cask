cask "agi" do
  version "3.3.0"
  sha256 "6f917d5c22e448eeaf7426257fa7d087f2874c5866e616a62b6de6be929921f2"

  url "https://github.com/google/agi/releases/download/v#{version}/agi-#{version}-macos.dmg",
      verified: "github.com/google/agi/"
  name "agi"
  desc "Android GPU Inspector"
  homepage "https://gpuinspector.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "AGI.app"

  zap trash: "~/.agic"
end
