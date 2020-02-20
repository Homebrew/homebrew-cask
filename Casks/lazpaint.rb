cask 'lazpaint' do
  version '7.0.7'
  sha256 '243325c99caabae9d99f817f171d369e73add46adeffe90209edcc737e5bb1ce'

  # github.com/bgrabitmap/lazpaint was verified as official when first introduced to the cask
  url "https://github.com/bgrabitmap/lazpaint/releases/download/v#{version}/lazpaint#{version}_macos64.dmg"
  appcast 'https://github.com/bgrabitmap/lazpaint/releases.atom'
  name 'LazPaint'
  homepage 'https://bgrabitmap.github.io/lazpaint/'

  app 'LazPaint.app'
end
