cask "orange" do
  version "3.31.1"
  sha256 "be92fdeeeb3336456d56829bd473538e4abae70269285b7990f8cbc72a91951c"

  url "https://download.biolab.si/download/files/Orange#{version.major}-#{version}-Python3.8.8.dmg"
  name "Orange"
  desc "Component-based data mining software"
  homepage "https://orange.biolab.si/"

  livecheck do
    url "https://download.biolab.si/download/files/"
    regex(/Orange#{version.major}[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  app "Orange#{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Orange",
    "~/Library/Caches/Orange",
    "~/Library/Logs/Orange",
    "~/Library/Saved Application State/si.biolab.orange.savedState",
  ]
end
