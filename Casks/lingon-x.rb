cask :v1 => 'lingon-x' do
  version :latest
  sha256 :no_check

  url 'http://www.peterborgapps.com/downloads/LingonX2.zip'
  appcast 'http://www.peterborgapps.com/updates/lingonx2-appcast.xml'
  homepage 'http://www.peterborgapps.com/lingon/'
  license :commercial

  app 'Lingon X.app'

  depends_on :macos => '>= :yosemite'
end
