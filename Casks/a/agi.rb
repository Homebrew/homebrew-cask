cask "agi" do
  version "3.3.2"
  sha256 "1901407d93c5eb32256f98a2f3a4c941cad80174539d335f434b1357b63b3a55"

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
