cask 'stay' do
  version '1.2.5'
  sha256 '4ca4048d75c2b3199e1a46c06797a1a483ebf7f9ca9fa48ddac9eb1bfe75bc58'

  url "https://cordlessdog.com/stay/versions/Stay%20#{version}.zip"
  appcast 'https://cordlessdog.com/stay/appcast.xml',
          :sha256 => 'ee2f568637c318e5d33ea90c901050e07351aec8b3bbf8086eb44d44329e390f'
  name 'Stay'
  homepage 'https://cordlessdog.com/stay/'
  license :commercial

  app 'Stay.app'
end
