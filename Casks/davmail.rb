cask "davmail" do
  version "6.0.1-3390"
  sha256 "917bafe8b5466cbd2a9ac282bf0ef5590f3cc83e099c88ce729897b60fd9bc89"

  url "https://downloads.sourceforge.net/davmail/DavMail-MacOSX-#{version}.app.zip",
      verified: "downloads.sourceforge.net/davmail/"
  appcast "https://sourceforge.net/projects/davmail/rss"
  name "DavMail"
  desc "Use any mail/calendar client with an Exchange server"
  homepage "https://davmail.sourceforge.io/"

  app "DavMail.app"

  caveats do
    depends_on_java
  end
end
