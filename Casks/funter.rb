cask "funter" do
  if MacOS.version <= :sierra
    version "4.1b64"
    sha256 "b059000717f7f8af67ee027d81aea6c2d9f343e0eb72e439a9f286ab265b7b93"
    url "https://nektony.com/download/funter/funter_10.12.dmg"
  else
    version "5.4.2,217"
    sha256 :no_check
    url "https://nektony.com/download/funter/Funter.dmg"
  end

  name "Funter"
  desc "Shows hidden files and folders and switches their visibility in Finder"
  homepage "https://nektony.com/products/funter"

  livecheck do
    url "https://nektony.com/pro-support/funter/update/update.xml"
    strategy :sparkle
  end

  app "Funter #{version.major}.app"
end
