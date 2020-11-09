cask "qxmledit" do
  version "0.9.16"
  sha256 "81c7d8804b59b4190c987f0e1c503052c96984e8ae5e570dc3a49ce22837b15a"

  # downloads.sourceforge.net/qxmledit/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/qxmledit/QXmlEdit-#{version}.dmg"
  appcast "https://sourceforge.net/projects/qxmledit/rss"
  name "QXmlEdit"
  homepage "https://qxmledit.org/"

  app "QXmlEdit.app"
end
