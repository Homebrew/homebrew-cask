cask 'lazpaint' do
  version '6.4.1'
  sha256 'b9518c828b3369030e25800ceb82dd6ccb0a2a105157b22332c4bc3711e42a07'

  # github.com/bgrabitmap/lazpaint was verified as official when first introduced to the cask
  url "https://github.com/bgrabitmap/lazpaint/releases/download/v#{version}/LazPaint.dmg"
  appcast 'https://github.com/bgrabitmap/lazpaint/releases.atom'
  name 'LazPaint'
  homepage 'https://bgrabitmap.github.io/lazpaint/'

  app 'LazPaint.app'
end
