cask 'reborn' do
  version '0.4.41'
  sha256 'af86c5798df2522979a374431ddb2bb0f3288d637cb91578f59bc289fefa326b'

  url "https://github.com/langyanduan/Reborn/releases/download/#{version}/Reborn.zip"
  appcast 'https://github.com/langyanduan/Reborn/releases.atom',
          checkpoint: 'f091d8c2f112d0e0824e2ae4ffe23c54f55e62bea389aa198ee71fa8e4d2039d'
  name 'Reborn'
  homepage 'https://github.com/langyanduan/Reborn'

  app 'Reborn.app'
end
