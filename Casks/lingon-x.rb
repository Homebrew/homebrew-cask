cask 'lingon-x' do
  version '4.3.6'
  sha256 '45d99926a089440c153462a7f2a56804b504c80aa3a4a30e5b2b4fda0ebcaabd'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: '9ac359381e18499b0ddd76bf778045400aa1c1ba040bb2601fe1bee55004ac51'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'

  depends_on macos: '>= :yosemite'

  app 'Lingon X.app'
end
