cask "svnx" do
  version "2.0.1"
  sha256 "e8113dcb26f16644ded3cbe4a52e2a4deee42c469c17e79de3f91565721c5587"

  url "https://subversion.assembla.com/svn/svnx/tags/svnX%20#{version}.dmg"
  name "svnX"
  homepage "https://subversion.assembla.com/svn/svnx/html/index.html"

  livecheck do
    url "https://subversion.assembla.com/svn/svnx/rss/svnX.rss.xml"
    strategy :sparkle
  end

  app "svnX.app"
end
