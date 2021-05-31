cask "ff-works" do
  version "2.3.1"
  sha256 :no_check

  url "https://www.ffworks.net/ffWorks.dmg"
  name "ff·Works"
  desc "Video-encoding and transcoding app"
  homepage "https://www.ffworks.net/"

  livecheck do
    url "https://www.ffworks.net/download.html"
    strategy :page_match
    regex(/version\s*(\d+(?:\.\d+)*)/i)
  end

  app "ff·Works.app"
end
