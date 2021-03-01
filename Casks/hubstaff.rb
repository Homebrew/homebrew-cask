cask "hubstaff" do
  version "1.5.16,2850"
  sha256 "0b37c45740efd23873d350fd8fd1f700e0567dd33c966bccb9ce1a8675f5e5fe"

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
