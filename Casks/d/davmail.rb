cask "davmail" do
  version "6.2.2,3546"
  sha256 "add5a5dc2b24cd3c9612a16941a09a3f7e3d3a768f7f522206daa02273c6f200"

  url "https://downloads.sourceforge.net/davmail/DavMail-MacOSX-#{version.csv.first}-#{version.csv.second}.app.zip"
  name "DavMail"
  desc "Use any mail/calendar client with an Exchange server"
  homepage "https://davmail.sourceforge.net/"

  livecheck do
    url "https://sourceforge.net/projects/davmail/rss?path=/davmail"
    regex(%r{url=.*?/DavMail-MacOSX[._-]v?(\d+(?:\.\d+)+)-(\d+(?:\.\d+)*)\.app\.zip}i)
    strategy :sourceforge do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  app "DavMail.app"

  zap trash: [
    "~/.davmail.properties",
    "~/Library/Logs/DavMail",
  ]

  caveats do
    depends_on_java
  end
end
