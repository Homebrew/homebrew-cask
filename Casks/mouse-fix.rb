cask 'mouse-fix' do
  version :latest
  sha256 :no_check

  url 'https://mousefix.org/maindownload/MacMouseFix.zip'
  name 'Mac Mouse Fix'
  homepage 'https://mousefix.org/'

  prefpane 'Mouse Fix.prefpane'
end
