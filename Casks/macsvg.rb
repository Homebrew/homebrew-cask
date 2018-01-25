cask 'macsvg' do
  version '1.0.1.0656'
  sha256 '9d6aff1d3f4aa24ad1c16ec8e8f24e19a61bad0e17d139d85d97939ca1c8d5a5'

  # github.com/dsward2/macSVG was verified as official when first introduced to the cask
  url "https://github.com/dsward2/macSVG/releases/download/#{version.major_minor_patch}/macSVG.#{version}.dmg"
  appcast 'https://github.com/dsward2/macSVG/releases.atom',
          checkpoint: 'b916ae46cba7c27f792c427f06ea14d772d1c99b65472a47d242dd904e08a3dc'
  name 'macSVG'
  homepage 'https://macsvg.org/'

  app 'macSVG.app'

  zap trash: [
               '~/Library/Application Scripts/com.arkphone.macsvg',
               '~/Library/Containers/com.arkphone.macsvg',
             ]
end
