cask "profind" do
  version "1.9.2,1921"
  sha256 "eb21a5a769a7bd29c1411aa86578d6bf3da67748d18b9cb146f1638d7db5abe1"

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
