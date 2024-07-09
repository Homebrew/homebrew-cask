cask "agi" do
  version "3.3.1"
  sha256 "d8a658b5a81e8be2c98277f128897e5a99b43799cb0713995d22740ab03bd819"

  url "https://github.com/google/agi/releases/download/#{version}/agi-#{version}-macos.dmg",
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
