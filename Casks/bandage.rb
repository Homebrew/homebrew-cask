cask 'bandage' do
  version '0.8.1'
  sha256 '13e90e5824b61bd4abe62afa8785a28627714bf7a3d4dad3edb4b8f9854d3b6d'

  # github.com/rrwick/Bandage was verified as official when first introduced to the cask
  url "https://github.com/rrwick/Bandage/releases/download/v#{version}/Bandage_Mac_v#{version.dots_to_underscores}.zip"
  appcast 'https://github.com/rrwick/Bandage/releases.atom',
          checkpoint: '31d89821f7d090aa6a4ed73752942e232ba1309fc2338ced357adf5bcbb5faab'
  name 'Bandage'
  homepage 'https://rrwick.github.io/Bandage/'

  app 'Bandage.app'
end
