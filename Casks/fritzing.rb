cask 'fritzing' do
  version '0.9.3b'
  sha256 'a057ed849b842540b98a68ab2cb996e22b482278706dd2f8da21d1bccf70513f'

  url "http://fritzing.org/download/#{version}/mac-os-x-105/Fritzing#{version}.dmg"
  appcast 'https://github.com/fritzing/fritzing-app/releases.atom',
          checkpoint: 'a809ee3389e816cc81bd1053fabbb5da2cf82f093128db4fe8ddfa80a9b4a36d'
  name 'Fritzing'
  homepage 'http://fritzing.org/home/'

  app 'Fritzing.app'
end
