cask :v1 => 'lingon-x' do
  version :latest
  sha256 :no_check

  url 'https://www.peterborgapps.com/downloads/LingonX2.zip'
  appcast 'https://www.peterborgapps.com/updates/lingonx2-appcast.xml'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'
  license :commercial

  app 'Lingon X.app'

  depends_on :macos => '>= :yosemite'
end
