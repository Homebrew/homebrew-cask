cask 'manico' do
  version '2.0'
  sha256 '121458b99fbf3a11bc248e2922e73cd98d03409e343690d280a49903c38c79ce'

  url "http://manico.im/static/Manico_#{version}.dmg"
  name 'Manico'
  homepage 'http://manico.im/'
  license :commercial

  app 'Manico.app'

  zap :delete => [
                  '~/Library/Containers/im.manico.Manico',
                 ]
end
