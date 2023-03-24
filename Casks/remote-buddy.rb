cask "remote-buddy" do
  version "2.4"
  sha256 :no_check

  url "https://www.iospirit.com/products/remotebuddy/download/RemoteBuddy.zip"
  name "Remote Buddy"
  homepage "https://www.iospirit.com/products/remotebuddy/"

  livecheck do
    url "https://www.iospirit.com/products/remotebuddy/releasenotes/"
    regex(/Changes\s+in\s+version\s+(\d+(?:\.\d+)+)/i)
  end

  app "Remote Buddy.app"
end
