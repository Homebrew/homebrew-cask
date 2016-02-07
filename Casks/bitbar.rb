cask 'bitbar' do
  version '1.4.0'
  sha256 'a5e552e96613b9d8d7caffa53519f640c778bac4174afbc531388362912bffb2'

  url "https://github.com/matryer/bitbar/releases/download/v#{version}/BitBar-v#{version.major_minor}.zip"
  appcast 'https://github.com/matryer/bitbar/releases.atom',
          checkpoint: '7dcfb67d06d77cb92a5ca083e5ccc16f11e25d67d579c5e373fb0d78fe0a65d6'
  name 'BitBar'
  homepage 'https://github.com/matryer/bitbar/'
  license :mit

  app 'BitBar.app'
end
