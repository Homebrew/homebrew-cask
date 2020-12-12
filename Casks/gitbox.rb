cask "gitbox" do
  version "1.6.2"
  sha256 "181ac55515221bf07c9994f25a11e962a9057e4249600b4d95424bcb6bb5c6d7"

  # d1oa71y4zxyi0a.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d1oa71y4zxyi0a.cloudfront.net/gitbox-#{version}-ml.zip"
  appcast "http://gitboxapp.com/updates.xml"
  name "Gitbox"
  homepage "http://gitboxapp.com/"

  app "Gitbox.app"

  zap trash: "~/Library/Preferences/com.oleganza.gitbox.plist"
end
