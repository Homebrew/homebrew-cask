cask :v1 => 'callnote' do
  version '2.3.7'
  sha256 '968c61f2cd1e71f91ec45b9f69023765210010e3d28256eeb65942ee075e756b'

  url "http://callnote.kandasoft.com/callnote-premium-install-#{version}.pkg"
  homepage 'http://www.kandasoft.com/home/kanda-apps/skype-call-recorder.html'
  license :unknown

  pkg "callnote-premium-install-#{version}.pkg"

  uninstall :pkgutil => 'callnote-pro'
end
