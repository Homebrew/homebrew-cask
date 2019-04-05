cask 'lmms' do
  version '1.1.3'
  sha256 '6d5197e6e5edd4a08cb26fc98ee229308833b4f759e9d9724a745ab1035aba15'

  # github.com/LMMS/lmms was verified as official when first introduced to the cask
  url "https://github.com/LMMS/lmms/releases/download/v#{version}/lmms-#{version}-mac10.7.dmg"
  appcast 'https://github.com/LMMS/lmms/releases.atom'
  name 'LMMS'
  homepage 'https://lmms.io/'

  app 'LMMS.app'
end
