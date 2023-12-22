cask "ff-works" do
  version "3.8.1"
  sha256 :no_check

  url "https://www.ffworks.net/ffWorks.dmg"
  name "ff·Works"
  desc "Video-encoding and transcoding app"
  homepage "https://www.ffworks.net/"

  livecheck do
    url "https://www.ffworks.net/download.html"
    regex(/version\s*(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :el_capitan"

  app "ff·Works.app"

  zap trash: [
    "~/Library/Application Support/ffWorks",
    "~/Library/WebKit/com.osbytes.ffworks#{version.major}",
  ]
end
