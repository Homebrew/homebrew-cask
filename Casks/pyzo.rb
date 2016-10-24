cask 'pyzo' do
  version '4.3.1'
  sha256 'a52b8217b5eaad22ef41f8385ea5caea4cb0451985438adfbd5ce3aacc78d0a3'

  # github.com/pyzo/pyzo was verified as official when first introduced to the cask
  url "https://github.com/pyzo/pyzo/releases/download/v#{version}/pyzo-#{version}-osx64.dmg"
  appcast 'https://github.com/pyzo/pyzo/releases.atom',
          checkpoint: '457c16e08fe3d74b0988d8e582055e2f67d09a775cd2d74108918eb2599a3ce7'
  name 'Pyzo'
  homepage 'http://www.pyzo.org/'

  app 'pyzo.app'

  zap delete: '~/Library/Application Support/pyzo'
end
