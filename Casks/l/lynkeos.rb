cask "lynkeos" do
  version "3.6"
  sha256 "f86fa706d5ec58e58184ae69e69bb2c7db7a705876c39f4023e3dc9e8e8ae0b2"

  url "https://downloads.sourceforge.net/lynkeos/lynkeos/#{version}/Lynkeos-App-#{version.dots_to_hyphens}.zip",
      verified: "downloads.sourceforge.net/lynkeos/"
  name "Lynkeos"
  desc "Astronomical webcam image processing software"
  homepage "https://lynkeos.sourceforge.io/"

  livecheck do
    url "https://sourceforge.net/projects/lynkeos/rss?path=/lynkeos"
    regex(%r{url=.*?/v?(\d+(?:\.\d+)+)/Lynkeos[._-]App[\d._-]*\.zip}i)
  end

  app "Lynkeos-App-#{version.dots_to_hyphens}/Lynkeos.app"
end
