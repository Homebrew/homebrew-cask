cask 'lazpaint' do
  version '7.0.5'
  sha256 'f12d9c977c2e3ea2ec4dab6d914a96f0be3c5de81cffa8a502a2068ac62753b8'

  # github.com/bgrabitmap/lazpaint was verified as official when first introduced to the cask
  url "https://github.com/bgrabitmap/lazpaint/releases/download/v#{version}/lazpaint#{version}_macos64.zip"
  appcast 'https://github.com/bgrabitmap/lazpaint/releases.atom'
  name 'LazPaint'
  homepage 'https://bgrabitmap.github.io/lazpaint/'

  app 'LazPaint.app'
end
