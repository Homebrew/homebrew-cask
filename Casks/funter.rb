cask "funter" do
  if MacOS.version <= :sierra
    version "4.1b64"
    sha256 "b059000717f7f8af67ee027d81aea6c2d9f343e0eb72e439a9f286ab265b7b93"
    url "https://nektony.com/download/funter/funter_10.12.dmg"
  else
    version "5.1"
    sha256 "c6fc8c78ad68ed16648edd0416f230b92535662ae72585f89279b49b67c4754e"
    url "https://nektony.com/download/funter/Funter.dmg"
    appcast "https://nektony.com/pro-support/funter/update/update.xml"
  end

  name "Funter"
  desc "Shows hidden files and folders and switches their visibility in Finder"
  homepage "https://nektony.com/products/funter"

  app "Funter #{version.major}.app"
end
