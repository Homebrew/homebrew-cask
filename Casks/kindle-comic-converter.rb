cask 'kindle-comic-converter' do
  version '5.4.4'
  sha256 '61fb5ef618745c15d56d4dfad388bca20f446ac43a6c838e5f722beeddd65da2'

  url "https://kcc.iosphe.re/OSX/KindleComicConverter_osx_#{version}.dmg"
  name 'Kindle Comic Converter'
  homepage 'https://kcc.iosphe.re/'

  app 'Kindle Comic Converter.app'
end
