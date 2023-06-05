cask "qxmledit" do
  version "0.9.18"
  sha256 "9f189fbd0cf72ec7c94fad3d3f3850dc7d898cff5a088353cfd54877cf9f2bb9"

  url "https://downloads.sourceforge.net/qxmledit/QXmlEdit-#{version}.dmg",
      verified: "downloads.sourceforge.net/qxmledit/"
  name "QXmlEdit"
  desc "XML editor"
  homepage "https://qxmledit.org/"

  livecheck do
    url "https://sourceforge.net/projects/qxmledit/rss"
    regex(/url=.*?QXmlEdit[._-]?v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "QXmlEdit.app"
end
