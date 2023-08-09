cask "davmail" do
  version "6.1.0,3423"
  sha256 "08c3024b9f32741d0268d2335a57337fda67d14ce47b8a4dee02bb8cbe210c64"

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
