cask "agi" do
  version "3.3.3"
  sha256 "7b045ba934274eeced3d1f9df3101f0c67a6ec62d99a7d1986e54bec4de9d2af"

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

  caveats do
    requires_rosetta
  end
end
