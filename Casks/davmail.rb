cask "davmail" do
  version "6.0.1,3390"
  sha256 "917bafe8b5466cbd2a9ac282bf0ef5590f3cc83e099c88ce729897b60fd9bc89"

  url "https://downloads.sourceforge.net/davmail/DavMail-MacOSX-#{version.csv.first}-#{version.csv.second}.app.zip",
      verified: "downloads.sourceforge.net/davmail/"
  name "DavMail"
  desc "Use any mail/calendar client with an Exchange server"
  homepage "https://davmail.sourceforge.io/"

  livecheck do
    url "https://sourceforge.net/projects/davmail/rss?path=/davmail"
    regex(%r{url=.*?/DavMail-MacOSX[._-]v?(\d+(?:\.\d+)+)-(\d+(?:\.\d+)*)\.app\.zip}i)
    strategy :sourceforge do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  app "DavMail.app"

  caveats do
    depends_on_java
  end
end
