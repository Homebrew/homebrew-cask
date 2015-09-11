cask :v1 => 'catchmouse' do
  version :latest
  sha256 :no_check

  url 'http://ftnew.com/files/CatchMouse.zip'
  name 'CatchMouse'
  homepage 'http://ftnew.com/catchmouse.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'CatchMouse.app'
end
