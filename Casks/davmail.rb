cask "davmail" do
  version "5.5.1-3299"
  sha256 "d906cc113a055bd3c494fe917907df2562c4bee94726aa08ed13cdb519b9dbe9"

  # downloads.sourceforge.net/davmail/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/davmail/DavMail-MacOSX-#{version}.app.zip"
  appcast "https://sourceforge.net/projects/davmail/rss"
  name "DavMail"
  homepage "https://davmail.sourceforge.io/"

  app "DavMail.app"

  caveats do
    depends_on_java
  end
end
