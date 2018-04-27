cask 'macsvg' do
  version '1.1.2'
  sha256 '3a3742b2a19c973154004fc3b2c1a0d65593be506e263d72f95331a8619b207f'

  # github.com/dsward2/macSVG was verified as official when first introduced to the cask
  url "https://github.com/dsward2/macSVG/releases/download/v#{version}/macSVG-v#{version}.zip"
  appcast 'https://github.com/dsward2/macSVG/releases.atom',
          checkpoint: 'e707f0d8e9bc2cee6465656a765c6330b3499e58085781204877bd375c99192d'
  name 'macSVG'
  homepage 'https://macsvg.org/'

  app "macSVG-v#{version}/macSVG.app"

  zap trash: [
               '~/Library/Application Scripts/com.arkphone.macsvg',
               '~/Library/Containers/com.arkphone.macsvg',
             ]
end
