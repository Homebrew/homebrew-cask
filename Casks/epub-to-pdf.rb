class EpubToPdf < Cask
  # non-Sparkle appcast
  appcast 'https://code.google.com/feeds/p/epub-2-pdf/downloads/basic'
  url 'http://epub-2-pdf.googlecode.com/files/e2p-3.dmg'
  homepage 'https://code.google.com/p/epub-2-pdf'
  version '3.1'
  sha256 'dcfc59d57f756802e844614b7dae43bca67284ec85fe6b909f244e41f20987b3'
  link 'epub-to-pdf.app'
end
