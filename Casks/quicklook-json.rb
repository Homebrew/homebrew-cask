cask :v1 => 'quicklook-json' do
  version :latest
  sha256 :no_check

  url 'http://www.sagtau.com/media/QuickLookJSON.qlgenerator.zip'
  homepage 'http://www.sagtau.com/quicklookjson.html'
  license :unknown    # todo: improve this machine-generated value

  qlplugin 'QuickLookJSON.qlgenerator'
end
