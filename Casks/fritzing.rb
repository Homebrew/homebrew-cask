cask 'fritzing' do
  version '0.9.3b'
  sha256 'a057ed849b842540b98a68ab2cb996e22b482278706dd2f8da21d1bccf70513f'

  url "http://fritzing.org/download/#{version}/mac-os-x-105/Fritzing#{version}.dmg"
  name 'Fritzing'
  homepage 'http://fritzing.org/'

  app 'Fritzing.app'
end
