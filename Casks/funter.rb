cask "funter" do
  if MacOS.version <= :sierra
    version "4.1b64"
    sha256 "b059000717f7f8af67ee027d81aea6c2d9f343e0eb72e439a9f286ab265b7b93"
    url "https://nektony.com/download/funter/funter_10.12.dmg"
  else
    version "5.0.1"
    sha256 "ecb8280144c72b9bd06863be33b534a92fa9ef73b3c6b21f05a3a870d8bc5704"
    url "https://nektony.com/download/funter/Funter.dmg"
    appcast "https://nektony.com/pro-support/funter/update/update.xml"
  end

  name "Funter"
  homepage "https://nektony.com/products/funter"

  app "Funter #{version.major}.app"
end
