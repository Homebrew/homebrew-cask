cask "hubstaff" do
  version "1.6.0,3411"
  sha256 "f6068e4c3647b385986257d7b146cda0397f940e6e79653a5143a03629b01c13"

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
