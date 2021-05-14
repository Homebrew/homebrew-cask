cask "gitbox" do
  version "1.6.2"
  sha256 "181ac55515221bf07c9994f25a11e962a9057e4249600b4d95424bcb6bb5c6d7"

  url "https://d1oa71y4zxyi0a.cloudfront.net/gitbox-#{version}-ml.zip",
      verified: "d1oa71y4zxyi0a.cloudfront.net/"
  name "Gitbox"
  homepage "http://gitboxapp.com/"

  livecheck do
    url "http://gitboxapp.com/updates.xml"
    strategy :sparkle
  end

  app "Gitbox.app"

  zap trash: "~/Library/Preferences/com.oleganza.gitbox.plist"
end
