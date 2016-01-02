cask 'sharemouse' do
  version :latest
  sha256 :no_check

  url 'http://www.keyboard-and-mouse-sharing.com/ShareMouseSetup.dmg'
  name 'ShareMouse'
  homepage 'http://www.keyboard-and-mouse-sharing.com/'
  license :closed

  app 'ShareMouse.app'
end
