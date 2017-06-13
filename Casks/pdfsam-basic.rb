cask 'pdfsam-basic' do
  version '3.3.2'
  sha256 '06b48c3da25d674f319131dc9f93ad68471f403fd33b2b2e6a6b940eda8686d8'

  # github.com/torakiki/pdfsam was verified as official when first introduced to the cask
  url "https://github.com/torakiki/pdfsam/releases/download/v#{version}/PDFsam-#{version}.dmg"
  appcast 'https://github.com/torakiki/pdfsam/releases.atom',
          checkpoint: 'd5596d303eef7216985f2e5b6e87609bbe693eeaefc3ee52eb307f123269b997'
  name 'PDFsam Basic'
  homepage 'http://www.pdfsam.org/'

  app 'PDFsam.app'
end
