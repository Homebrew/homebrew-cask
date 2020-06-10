cask 'lmms' do
  version '1.2.1'
  sha256 '157cca82f617e18edbfa3f9f9f91b4d44df048d4f865721bf46f4854f13495e9'

  # github.com/LMMS/lmms/ was verified as official when first introduced to the cask
  url "https://github.com/LMMS/lmms/releases/download/v#{version}/lmms-#{version}-mac10.13.dmg"
  appcast 'https://github.com/LMMS/lmms/releases.atom'
  name 'LMMS'
  homepage 'https://lmms.io/'

  depends_on macos: '>= :high_sierra'

  app 'LMMS.app'
end
