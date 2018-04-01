cask 'beaker-browser' do
  version '0.7.11'
  sha256 '78f988186e3668aa1e6e4459f3e5f3c045ef9fd291e0a790f9c595eb73874ee9'

  # github.com/beakerbrowser/beaker was verified as official when first introduced to the cask
  url "https://github.com/beakerbrowser/beaker/releases/download/#{version}/beaker-browser-#{version}.dmg"
  appcast 'https://github.com/beakerbrowser/beaker/releases.atom',
          checkpoint: '81c94a620c59bd5ea85e1d562381d7f709d55edd33356947024015c7033d98a3'
  name 'Beaker Browser'
  homepage 'https://beakerbrowser.com/'

  app 'Beaker Browser.app'
end
