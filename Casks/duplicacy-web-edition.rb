cask "duplicacy-web-edition" do
  arch arm: "arm64", intel: "x64"

  version "1.6.3"
  sha256 arm:   "bf9d10dfc2faa7e43606281ec853e231aa009ae2c0b790ab85eadee8a1919708",
         intel: "39e96df1c43782632d1d600ed52e04de05226ff21e266d3d266de1be743679f3"

  url "https://acrosync.com/duplicacy-web/duplicacy_web_osx_#{arch}_#{version}.dmg",
      verified: "acrosync.com/duplicacy-web/"
  name "Duplicacy Web Edition"
  desc "Cloud backup tool"
  homepage "https://duplicacy.com/"

  livecheck do
    url "https://duplicacy.com/download.html"
    regex(%r{href=.*?/duplicacy[._-]web[._-]osx[._-]#{arch}[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "Duplicacy Web Edition.app"

  zap trash: "~/.duplicacy-web"
end
