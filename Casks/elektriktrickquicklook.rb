cask 'elektriktrickquicklook' do
  version '1.0.3'
  sha256 '9449543ff34b5d0cba1e330340e34e8bf046425e5bf83d28bcc55f7562f78e12'

  url "http://www.elektriktrick.com/Downloads/ElektriktrickQL_#{version}.dmg"
  name 'Elektriktrick STL and GCode Quicklook'
  homepage 'http://www.elektriktrick.com/sw_quicklook.html'

  qlplugin 'ElektrikTrickQuickLook.qlgenerator'
end
