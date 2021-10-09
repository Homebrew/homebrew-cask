cask "ppduck" do
  version "3.10.12"
  sha256 "0070ce4f6fba3b9258c542ca008bc75d9210ab7102817635384e67c939b57a16"

  url "https://download.ppduck.com/PPDuck#{version.major}_#{version}.dmg"
  name "PPDuck"
  desc "Integrates several image compression algorithms"
  homepage "https://ppduck.com/"

  livecheck do
    url :homepage
    regex(/PPDuck.[._-]?(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "PPDuck#{version.major}.app"
end
