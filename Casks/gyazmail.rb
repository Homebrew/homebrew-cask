cask "gyazmail" do
  version "1.6.5"
  sha256 "bc2376ac6a82c46301d59e0d3746ea9f70c1701bcb92ed81da7b151c81a62fde"

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
