cask "bathyscaphe" do
  version "310-v1089"
  sha256 "32f7758d2898fd8cccd1b506c8d78bbff6733640e392eba67c95a6626377a603"

  # bitbucket.org/bathyscaphe/public/downloads/ was verified as official when first introduced to the cask
  url "https://bitbucket.org/bathyscaphe/public/downloads/BathyScaphe-#{version}.dmg"
  appcast "https://bathyscaphe.bitbucket.io/appcast.xml"
  name "BathyScaphe"
  homepage "https://bathyscaphe.bitbucket.io/"

  depends_on macos: ">= :sierra"

  app "BathyScaphe.app"
end
