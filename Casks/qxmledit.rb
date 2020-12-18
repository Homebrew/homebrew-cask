cask "qxmledit" do
  version "0.9.16"
  sha256 "81c7d8804b59b4190c987f0e1c503052c96984e8ae5e570dc3a49ce22837b15a"

  url "https://downloads.sourceforge.net/qxmledit/QXmlEdit-#{version}.dmg",
      verified: "downloads.sourceforge.net/qxmledit/"
  appcast "https://sourceforge.net/projects/qxmledit/rss"
  name "QXmlEdit"
  homepage "https://qxmledit.org/"

  app "QXmlEdit.app"
end
