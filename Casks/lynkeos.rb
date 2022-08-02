cask "lynkeos" do
  version "3.5"
  sha256 "b41f286e4adb8db578e975e65d842a79cd50bcf91dffb4a8885364d7f3fe7a45"

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
