cask 'bandage' do
  version '0.8.1'
  sha256 '13e90e5824b61bd4abe62afa8785a28627714bf7a3d4dad3edb4b8f9854d3b6d'

  # github.com/rrwick/Bandage was verified as official when first introduced to the cask
  url "https://github.com/rrwick/Bandage/releases/download/v#{version}/Bandage_Mac_v#{version.dots_to_underscores}.zip"
  appcast 'https://github.com/rrwick/Bandage/releases.atom',
          checkpoint: 'f859465018f594b8e04978c946b9a05fdf3792897f51df9dc04047f35cfbfc4f'
  name 'Bandage'
  homepage 'https://rrwick.github.io/Bandage/'

  app 'Bandage.app'
end
