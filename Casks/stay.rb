cask :v1 => 'stay' do
  version '1.2.5'
  sha256 '4ca4048d75c2b3199e1a46c06797a1a483ebf7f9ca9fa48ddac9eb1bfe75bc58'

  url "https://cordlessdog.com/stay/versions/Stay%20#{version}.zip"
  appcast 'https://cordlessdog.com/stay/appcast.xml',
          :sha256 => '92fa8a5630cbeb21bb108721dd8d28b0da58c3e4634e390161a557b281493cf0'
  name 'Stay'
  homepage 'https://cordlessdog.com/stay/'
  license :commercial

  app 'Stay.app'
end
