cask :v1 => 'catchmouse' do
  version :latest
  sha256 :no_check

  url 'http://ftnew.com/files/CatchMouse.zip'
  homepage 'http://ftnew.com/catchmouse.html'
  license :unknown    # todo: improve this machine-generated value

  app 'CatchMouse.app'
end
