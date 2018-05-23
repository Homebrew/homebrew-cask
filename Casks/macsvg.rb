cask 'macsvg' do
  version '1.1.4'
  sha256 '48c4efc381b2c1b90639757b8b5c6bb6a9dbf43cbf40e51d5b083973b5174992'

  # github.com/dsward2/macSVG was verified as official when first introduced to the cask
  url "https://github.com/dsward2/macSVG/releases/download/v#{version}/macSVG-v#{version}.zip"
  appcast 'https://github.com/dsward2/macSVG/releases.atom',
          checkpoint: '038ebf8971782bd337976c643c7e91d879f9d1b236fc9f5da206cdbe085c0b1d'
  name 'macSVG'
  homepage 'https://macsvg.org/'

  app "macSVG-v#{version}/macSVG.app"

  zap trash: [
               '~/Library/Application Scripts/com.arkphone.macsvg',
               '~/Library/Containers/com.arkphone.macsvg',
             ]
end
