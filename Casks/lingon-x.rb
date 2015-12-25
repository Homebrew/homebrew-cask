cask 'lingon-x' do
  version :latest
  sha256 :no_check

  url 'https://www.peterborgapps.com/downloads/LingonX2.zip'
  appcast 'https://www.peterborgapps.com/updates/lingonx2-appcast.xml',
          :sha256 => 'd95b4b7d3aa0c0d5eb574bd5630994f591a2bf7d9cffc1fe3c320efc63b1b936'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'
  license :commercial

  app 'Lingon X.app'

  depends_on :macos => '>= :yosemite'
end
