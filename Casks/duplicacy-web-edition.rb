cask "duplicacy-web-edition" do
  version "1.5.0"
  sha256 "b6a565cdb1987bc1804ca9b067fca98ad04bf86b9a42c6ce031a36ea38b64706"

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
