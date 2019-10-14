cask 'lazpaint' do
  version '7.0.6'
  sha256 'a77881f8d3d3077644a1072e243084d7c95fea8ac7e890384002845f9c52bc06'

  # github.com/bgrabitmap/lazpaint was verified as official when first introduced to the cask
  url "https://github.com/bgrabitmap/lazpaint/releases/download/v#{version}/lazpaint#{version}_macos64.dmg"
  appcast 'https://github.com/bgrabitmap/lazpaint/releases.atom'
  name 'LazPaint'
  homepage 'https://bgrabitmap.github.io/lazpaint/'

  app 'LazPaint.app'
end
