cask 'lingon-x' do
  version '2.3.2'
  sha256 '827cfd3694b41d5f84c075ba5df27e64d6294718bfa04a63d4e35beb65004621'

  url "https://www.peterborgapps.com/downloads/LingonX#{version.major}.zip"
  appcast "https://www.peterborgapps.com/updates/lingonx#{version.major}-appcast.xml",
          :sha256 => 'c7918aff6af4b54ee257205ab5a08c22c77b2f8485665b8beac03a1e5fb63cf1'
  name 'Lingon X'
  homepage 'https://www.peterborgapps.com/lingon/'
  license :commercial

  depends_on :macos => '>= :yosemite'

  app 'Lingon X.app'
end
