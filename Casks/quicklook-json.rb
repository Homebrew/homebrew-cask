cask :v1 => 'quicklook-json' do
  version :latest
  sha256 :no_check

  url 'http://www.sagtau.com/media/QuickLookJSON.qlgenerator.zip'
  homepage 'http://www.sagtau.com/quicklookjson.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  qlplugin 'QuickLookJSON.qlgenerator'
end
