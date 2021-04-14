cask "gyazmail" do
  version "1.6.4"
  sha256 "55050b134f60d6409c64e2093903301b110c9fc39faeb52bed396b128ef1c4f1"

  url "http://gyazsquare.com/gyazmail/GyazMail-#{version.no_dots}.dmg"
  name "GyazMail"
  desc "Email client"
  homepage "http://gyazsquare.com/gyazmail/"

  livecheck do
    url "http://gyazsquare.com/gyazmail/download.php"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/GyazMail-(\d+)(\d+)(\d+)\.dmg}i)
      "#{match[1]}.#{match[2]}.#{match[3]}"
    end
  end

  app "GyazMail.app"
end
