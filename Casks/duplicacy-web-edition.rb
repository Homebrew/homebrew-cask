cask "duplicacy-web-edition" do
  arch arm: "arm64", intel: "x64"

  version "1.7.2"
  sha256 arm:   "a0a0669f18f1a4d14bcdb066af3ea609e6bd3fb9f09ba843bc9f285826d6ee3e",
         intel: "7745d2ed6474a91c0d66c28e11296cd3a61fe3de6fd3c0b22c8666127befb0dc"

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
