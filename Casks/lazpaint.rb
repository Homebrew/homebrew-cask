cask 'lazpaint' do
  version '7.1.1'
  sha256 'bfb732d12b6f5ab792e332dcd778c647a7fbcc6419723849fe8518f2d63e0abc'

  # github.com/bgrabitmap/lazpaint/ was verified as official when first introduced to the cask
  url "https://github.com/bgrabitmap/lazpaint/releases/download/v#{version}/lazpaint#{version}_macos64.dmg"
  appcast 'https://github.com/bgrabitmap/lazpaint/releases.atom'
  name 'LazPaint'
  homepage 'https://bgrabitmap.github.io/lazpaint/'

  app 'LazPaint.app'
end
