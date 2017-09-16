cask 'iffmpeg' do
  version :latest
  sha256 :no_check

  url 'http://www.iffmpeg.com/iFFmpeg.dmg'
  name 'iFFmpeg'
  homepage 'http://www.iffmpeg.com/'

  app 'iFFmpeg.app'
end
