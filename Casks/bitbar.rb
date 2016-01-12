cask 'bitbar' do
  version '1.4'
  sha256 'a5e552e96613b9d8d7caffa53519f640c778bac4174afbc531388362912bffb2'

  url "https://github.com/matryer/bitbar/releases/download/v1.4.0/BitBar-v#{version}.zip"
  appcast 'https://github.com/matryer/bitbar/releases.atom',
          :sha256 => '673113d15e2cb3a7ef261a53b1d5b465f414ca8f000be9e0229a8bece5314094'
  name 'BitBar'
  homepage 'https://github.com/matryer/bitbar/'
  license :mit

  app 'BitBar.app'
end
