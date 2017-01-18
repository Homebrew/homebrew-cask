cask 'lingon-x' do
  version '4.3.4'
  sha256 '276b00b96eefa35615efd8b4e6dc30aba82096bcd146d80468fdfd37b6cf6222'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: 'f071d6ee29dfc8d8f683d854825bde984c015496fd730206deb1e9d095eaff14'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :yosemite'

  app 'Lingon X.app'
end
