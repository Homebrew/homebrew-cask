cask "ff-works" do
  version "2.3.2"
  sha256 :no_check

  url "https://www.ffworks.net/ffWorks.dmg"
  name "ff·Works"
  desc "Video-encoding and transcoding app"
  homepage "https://www.ffworks.net/"

  livecheck do
    url "https://www.ffworks.net/download.html"
    regex(/version\s*(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :yosemite"

  app "ff·Works.app"
end
