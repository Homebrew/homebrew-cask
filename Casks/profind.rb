cask "profind" do
  version "1.8.9,1817"
  sha256 "39d94a8dd273312e05af12afbf328ff6cbd95f8511c6291a7833df80e240b59d"

  url "https://www.zeroonetwenty.com/profind/downloads/ProFind#{version.before_comma.no_dots}.dmg"
  name "ProFind"
  homepage "https://www.zeroonetwenty.com/profind/"

  livecheck do
    url "https://www.zeroonetwenty.com/profind/downloads/ProFindVersionInfo.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "ProFind.app"
end
