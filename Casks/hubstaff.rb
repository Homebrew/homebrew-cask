cask "hubstaff" do
  version "1.6.1,3510"
  sha256 "5c655cb34d4a173a7b888795c6c4618cc89707d13531c63544533e5e0ece1c75"

  url "https://app.hubstaff.com/download/#{version.after_comma}-mac-os-x-#{version.before_comma.dots_to_hyphens}-release"
  name "Hubstaff"
  desc "Work time tracker"
  homepage "https://hubstaff.com/"

  livecheck do
    url "https://app.hubstaff.com/appcast.xml"
    strategy :sparkle do |item|
      "#{item.short_version.split("-").first},#{item.url[%r{/(\d+)-mac-os-x-(?:\d(?:-\d+)*)-release}i, 1]}"
    end
  end

  app "Hubstaff.app"
end
