cask "profind" do
  version "1.9.3,1930"
  sha256 "37e53e1f371c165c8e10ad719f95ccb837b6b7ce6015ea610c5ea1d4d06ea3a0"

  url "https://www.zeroonetwenty.com/profind/downloads/ProFind#{version.csv.first.no_dots}.dmg"
  name "ProFind"
  homepage "https://www.zeroonetwenty.com/profind/"

  livecheck do
    url "https://www.zeroonetwenty.com/profind/downloads/ProFindVersionInfo.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "ProFind.app"
end
