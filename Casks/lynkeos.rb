cask "lynkeos" do
  version "3.4"
  sha256 "aba6783ad3ef5c4f8785f70f120787b0ee918296f0c9a66cf91977d5c207db22"

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
