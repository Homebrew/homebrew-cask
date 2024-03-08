cask "duplicacy-web-edition" do
  arch arm: "arm64", intel: "x64"

  version "1.8.0"
  sha256 arm:   "7c5eaa463aee201351b01de642e94ab3d575acbc0a8e20fe386bfb63346ff0cc",
         intel: "53e7a7de4e343430146c8d9de86e0b35d915b018ec5bd62539a4010f46376c98"

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
