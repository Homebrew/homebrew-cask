cask 'cevelop' do
  version '1.7.1-201704211123'
  sha256 '5561659187360aa635ce04220544eb841e2e245f1a757c9b90f5f7a8ecef228f'

  url "https://www.cevelop.com/cevelop/downloads/cevelop-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://www.cevelop.com/download/',
          checkpoint: '913de30886b050e25b8e0996cb593a18412d2dec9d5664fac00b668cbd7e0ef9'
  name 'Cevelop'
  homepage 'https://www.cevelop.com/'

  app 'Cevelop.app'
end
