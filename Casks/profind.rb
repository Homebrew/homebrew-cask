cask "profind" do
  version "1.9.0,1905"
  sha256 "823eb62c5a8a73d211e18ae70bbcb075e24f90bc7ead797fd7d0d169d5cd9e4b"

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
