cask "davmail" do
  version "6.0.0-3375"
  sha256 "a212b6f3e06c9a145b3626bc1dcfc527f36d625530e53adf2ef379b9c6e9d354"

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
