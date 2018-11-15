cask 'breaker' do
  version '0.8.0'
  sha256 '68581fd1a64da0bda45816175fc680c8441d5cdcab19b67d1bb3556c6757823b'

  # github.com/beakerbrowser/beaker/ was verified as official when first introduced to the cask
  url "https://github.com/beakerbrowser/beaker/releases/download/#{version}/beaker-browser-#{version}-mac.zip"
  appcast 'https://github.com/beakerbrowser/beaker/releases.atom'
  name 'Beaker Browser'
  homepage 'https://beakerbrowser.com/'

  app 'Beaker Browser.app'
end
