cask 'lingon-x' do
  version '2.3.2'
  sha256 '827cfd3694b41d5f84c075ba5df27e64d6294718bfa04a63d4e35beb65004621'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          checkpoint: 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b856'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'
  license :commercial

  depends_on macos: '>= :yosemite'

  app 'Lingon X.app'
end
