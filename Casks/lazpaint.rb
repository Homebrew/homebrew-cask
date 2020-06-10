cask 'lazpaint' do
  version '7.1.2'
  sha256 'ce0d5c8104903a525ed2aac318f5eb4cb44d9edd08daa1c62302db26780d35dd'

  # github.com/bgrabitmap/lazpaint/ was verified as official when first introduced to the cask
  url "https://github.com/bgrabitmap/lazpaint/releases/download/v#{version}/lazpaint#{version}_macos64.dmg"
  appcast 'https://github.com/bgrabitmap/lazpaint/releases.atom'
  name 'LazPaint'
  homepage 'https://bgrabitmap.github.io/lazpaint/'

  app 'LazPaint.app'
end
