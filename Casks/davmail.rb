cask "davmail" do
  version "6.0.1,3390"
  sha256 "917bafe8b5466cbd2a9ac282bf0ef5590f3cc83e099c88ce729897b60fd9bc89"

  url "https://downloads.sourceforge.net/davmail/DavMail-MacOSX-#{version.csv.first}-#{version.csv.second}.app.zip",
      verified: "downloads.sourceforge.net/davmail/"
  name "DavMail"
  desc "Use any mail/calendar client with an Exchange server"
  homepage "https://davmail.sourceforge.io/"

  livecheck do
    url "https://sourceforge.net/projects/davmail/rss"
    strategy :page_match do |page|
      match = page.match(/DavMail[._-]MacOSX[._-]v?(\d+(?:\.\d+)+)[._-](\d+(?:\.\d+)*).app.zip/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "DavMail.app"

  caveats do
    depends_on_java
  end
end
