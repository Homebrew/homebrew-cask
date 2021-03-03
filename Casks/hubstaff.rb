cask "hubstaff" do
  version "1.5.17,2982"
  sha256 "90d0791902d1aac8ea797f302e97aeae26110394cb702e207e2b70cd1448f55a"

  url "https://app.hubstaff.com/download/#{version.after_comma}-mac-os-x-#{version.before_comma.dots_to_hyphens}-release"
  name "Hubstaff"
  homepage "https://hubstaff.com/"

  livecheck do
    url "https://app.hubstaff.com/appcast.xml"
    strategy :sparkle do |item|
      "#{item.short_version.split("-").first},#{item.url[%r{/(\d+)-mac-os-x-(?:\d(?:-\d+)*)-release}i, 1]}"
    end
  end

  app "Hubstaff.app"
end
