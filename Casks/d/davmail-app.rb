cask "davmail-app" do
  version "6.5.0,3850"
  sha256 "06f1e44f92ff01145f7348db7164247f241ce0c330cb41ff18cc6b0e0df2b052"

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

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "DavMail.app"

  zap trash: [
    "~/.davmail.properties",
    "~/Library/Logs/DavMail",
  ]

  caveats do
    depends_on_java
  end
end
