cask 'brisk' do
  version '0.2.0'
  sha256 'fa466a06e20374c091ed299367b6e0b58525fcad74a36419ca06f8685d49da76'

  url "https://github.com/br1sk/brisk/releases/download/#{version}/Brisk.app.tar.gz"
  appcast 'https://github.com/br1sk/brisk/releases.atom',
          checkpoint: 'fbc52e647fb83bf6b4856de0d0c9a60c4cfc12c5ebce6c782c1625a1b03cb72f'
  name 'Brisk'
  homepage 'https://github.com/br1sk/brisk'

  app 'Brisk.app'
end
