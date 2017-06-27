cask 'brisk' do
  version '1.0.1'
  sha256 '75efe333c1f5e20c58e010f443dae505a679b651f5fecf6f6a49e5d5763475ac'

  url "https://github.com/br1sk/brisk/releases/download/#{version}/Brisk.app.tar.gz"
  appcast 'https://github.com/br1sk/brisk/releases.atom',
          checkpoint: '5e8c5b48f8af9de1dab910ab3e1cc4960e0c9b577745b22db677febdfe66ec82'
  name 'Brisk'
  homepage 'https://github.com/br1sk/brisk'

  app 'Brisk.app'
end
