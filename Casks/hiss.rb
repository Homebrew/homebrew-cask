cask 'hiss' do
  version :latest
  sha256 :no_check

  url 'http://collect3.com.au/hiss/Hiss.zip'
  appcast 'http://collect3.com.au/hiss/appcast.xml',
          :checkpoint => '93326c3c5ea8cf01b32e42b2275b8dd2900687bd5b8e984a6f4f104d835e4bc5'
  name 'Hiss'
  homepage 'http://collect3.com.au/hiss/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Hiss.app'
end
