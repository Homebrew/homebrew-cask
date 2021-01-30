cask "profind" do
  version "1.8.10,1818"
  sha256 "8b616ad2e56e6d66f57bb7141897a31a790cb546d484dfcc98959ed1bca44f41"

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
