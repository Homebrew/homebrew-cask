cask 'pyzo' do
  version '4.4'
  sha256 'b031fc62e5cd5b721227ecea55841f269f52e12c6c165a4cac05d797d4f029fb'

  # github.com/pyzo/pyzo was verified as official when first introduced to the cask
  url "https://github.com/pyzo/pyzo/releases/download/v#{version}/pyzo-#{version}-osx64.dmg"
  appcast 'https://github.com/pyzo/pyzo/releases.atom',
          checkpoint: '18207956327a9617a6847f0718b5f61acc0fccb1d103380df48b20aec8b9508f'
  name 'Pyzo'
  homepage 'http://www.pyzo.org/'

  app 'pyzo.app'

  zap trash: '~/Library/Application Support/pyzo'
end
