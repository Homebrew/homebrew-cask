cask "qxmledit" do
  version "0.9.16"
  sha256 "81c7d8804b59b4190c987f0e1c503052c96984e8ae5e570dc3a49ce22837b15a"

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
