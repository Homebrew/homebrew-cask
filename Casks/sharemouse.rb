cask :v1 => 'sharemouse' do
  version :latest
  sha256 :no_check

  url 'http://www.keyboard-and-mouse-sharing.com/ShareMouseSetup.dmg'
  homepage 'http://www.keyboard-and-mouse-sharing.com/index.html'
  license :closed

  app 'ShareMouse.app'
end
