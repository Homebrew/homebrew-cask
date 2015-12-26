cask 'manico' do
  version '2.0'
  sha256 '121458b99fbf3a11bc248e2922e73cd98d03409e343690d280a49903c38c79ce'

  url "http://manico.im/static/Manico_#{version}.dmg"
  appcast 'http://manico.im/static/manico-official-appcast.xml',
          :sha256 => '6e15e440006e2717e5b0a1457bd0e97ec806fdc5d7398bf206d5a6a343036fb8'
  name 'Manico'
  homepage 'http://manico.im/'
  license :commercial

  app 'Manico.app'

  zap :delete => [
                  '~/Library/Containers/im.manico.Manico',
                 ]
end
