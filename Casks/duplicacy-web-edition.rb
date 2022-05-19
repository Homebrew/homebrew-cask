cask "duplicacy-web-edition" do
  version "1.6.2"
  sha256 "993dff0fcb91a4183bf66453291c67f848c9211939d9cdc4180d1d3ea544c198"

  url "https://acrosync.com/duplicacy-web/duplicacy_web_osx_x64_#{version}.dmg",
      verified: "acrosync.com/duplicacy-web/"
  name "Duplicacy Web Edition"
  desc "Cloud backup tool"
  homepage "https://duplicacy.com/"

  livecheck do
    url "https://duplicacy.com/download.html"
    regex(%r{href=.*?/duplicacy[._-]web[._-]osx[._-]x64[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "Duplicacy Web Edition.app"

  zap trash: "~/.duplicacy-web"
end
