cask 'avifquicklook' do
  version '1.0.1'
  sha256 'e8e9b2066dfb1a0e50cd8c3597e1987dd70775c2d6507c2a5d8bdde035af438b'

  url "https://github.com/dreampiggy/AVIFQuickLook/releases/download/#{version}/AVIFQuickLook.qlgenerator.zip"
  appcast 'https://github.com/dreampiggy/AVIFQuickLook/releases.atom'
  name 'AVIFQuickLook'
  homepage 'https://github.com/dreampiggy/AVIFQuickLook'

  qlplugin 'AVIFQuickLook.qlgenerator'
end
