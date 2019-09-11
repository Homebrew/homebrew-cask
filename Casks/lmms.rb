cask 'lmms' do
  version '1.2.0'
  sha256 'e258aa298b0bdab3b7be88933a83f24bddf39ac62ffaa1c20ecc5927b313bfbf'

  # github.com/LMMS/lmms was verified as official when first introduced to the cask
  url "https://github.com/LMMS/lmms/releases/download/v#{version}/lmms-#{version}-mac10.13.dmg"
  appcast 'https://github.com/LMMS/lmms/releases.atom'
  name 'LMMS'
  homepage 'https://lmms.io/'

  depends_on macos: '>= :high_sierra'

  app 'LMMS.app'
end
