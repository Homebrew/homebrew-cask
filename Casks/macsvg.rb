cask 'macsvg' do
  version '1.1.5'
  sha256 'aeaf81f5f93da24038c555375e0ff0e13be10c4b2e79592ba9a489a5506d1de3'

  # github.com/dsward2/macSVG was verified as official when first introduced to the cask
  url "https://github.com/dsward2/macSVG/releases/download/v#{version}/macSVG-v#{version}.zip"
  appcast 'https://github.com/dsward2/macSVG/releases.atom'
  name 'macSVG'
  homepage 'https://macsvg.org/'

  app 'macSVG.app'

  zap trash: [
               '~/Library/Application Scripts/com.arkphone.macsvg',
               '~/Library/Containers/com.arkphone.macsvg',
             ]
end
