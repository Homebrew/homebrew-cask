cask 'beaker-browser' do
  version '0.8.10'
  sha256 '061016145bc8bad90773bfa449abfece5c4d0e4eb276e8ee4d26ce2578094e41'

  # github.com/beakerbrowser/beaker was verified as official when first introduced to the cask
  url "https://github.com/beakerbrowser/beaker/releases/download/#{version}/beaker-browser-#{version}.dmg"
  appcast 'https://github.com/beakerbrowser/beaker/releases.atom'
  name 'Beaker Browser'
  homepage 'https://beakerbrowser.com/'

  app 'Beaker Browser.app'
end
