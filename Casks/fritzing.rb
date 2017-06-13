cask 'fritzing' do
  version '0.9.3b'
  sha256 'a057ed849b842540b98a68ab2cb996e22b482278706dd2f8da21d1bccf70513f'

  url "http://fritzing.org/download/#{version}/mac-os-x-105/Fritzing#{version}.dmg"
  appcast 'https://github.com/fritzing/fritzing-app/releases.atom',
          checkpoint: '25fb142407f7b457cb547f7d4b902e41f5903ba6826aa2c394d7273f5cdc4e3a'
  name 'Fritzing'
  homepage 'http://fritzing.org/home/'

  app 'Fritzing.app'
end
