class QuicklookJson < Cask
  version 'latest'
  sha256 :no_check

  url 'http://www.sagtau.com/media/QuickLookJSON.qlgenerator.zip'
  homepage 'http://www.sagtau.com/quicklookjson.html'

  qlplugin 'QuickLookJSON.qlgenerator'
end
