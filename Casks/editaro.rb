cask 'editaro' do
  version '1.5.1'
  sha256 '2b7708d762147b8213a5e191fd86a97071c2e82671668e57c79e74f4eb643d9c'

  # github.com/kkosuge/editaro was verified as official when first introduced to the cask
  url "https://github.com/kkosuge/editaro/releases/download/#{version}/Editaro-#{version}-mac.zip"
  appcast 'https://github.com/kkosuge/editaro/releases.atom'
  name 'Editaro'
  homepage 'https://editaro.com/'

  app 'Editaro.app'

  zap trash: '~/Library/ApplicationSupport/Editaro'
end
