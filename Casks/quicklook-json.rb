class QuicklookJson < Cask
  url 'http://www.sagtau.com/media/QuickLookJSON.qlgenerator.zip'
  homepage 'http://www.sagtau.com/quicklookjson.html'
  version 'latest'
  sha256 :no_check
  qlplugin 'QuickLookJSON.qlgenerator'
end
