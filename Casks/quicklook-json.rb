cask 'quicklook-json' do
  version :latest
  sha256 :no_check

  url 'http://www.sagtau.com/media/QuickLookJSON.qlgenerator.zip'
  name 'quick look JSON'
  homepage 'http://www.sagtau.com/quicklookjson.html'

  qlplugin 'QuickLookJSON.qlgenerator'
end
