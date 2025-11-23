cask "duplicacy-web-edition" do
  arch arm: "arm64", intel: "x64"

  version "1.8.3"
  sha256 arm:   "b9ea35f1be2717c44e5ec5dcd751c254f41105a81790ce1fd1a596a4769c2150",
         intel: "4c35a5c108fe2520668a1ca013003f2f99b02260492022807f9277962b8f1392"

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
