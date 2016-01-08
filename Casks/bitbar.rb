cask 'bitbar' do
  version '1.3.1'
  sha256 '07f3a138b07eeda6c8ad686626676a8fcda6bd10cd371a37274635bac36b1bf5'

  url "https://github.com/matryer/bitbar/releases/download/v#{version}/BitBar.app.zip"
  appcast 'https://github.com/matryer/bitbar/releases.atom',
          :sha256 => 'e470d13330b027827c802884046aacf08d1ed66851f2a1803fa5db180b316e97'
  name 'BitBar'
  homepage 'https://github.com/matryer/bitbar/'
  license :mit

  app 'BitBar.app'
end
