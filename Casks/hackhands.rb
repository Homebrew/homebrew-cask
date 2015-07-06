cask :v1 => 'hackhands' do
  version :latest
  sha256 :no_check

  url 'http://hackhands.com/osx/download'
  name 'HackHands'
  homepage 'https://hackhands.com/desktop'
  license :gratis

  app 'HackHands.app'
end
