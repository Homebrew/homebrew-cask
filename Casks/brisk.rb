cask 'brisk' do
  version '1.0.1'
  sha256 '75efe333c1f5e20c58e010f443dae505a679b651f5fecf6f6a49e5d5763475ac'

  url "https://github.com/br1sk/brisk/releases/download/#{version}/Brisk.app.tar.gz"
  appcast 'https://github.com/br1sk/brisk/releases.atom',
          checkpoint: 'c12db840df66de26359e114c345c65297edb88857e893573e037edf197be9218'
  name 'Brisk'
  homepage 'https://github.com/br1sk/brisk'

  app 'Brisk.app'
end
