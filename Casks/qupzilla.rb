cask 'qupzilla' do
  version :latest
  sha256 :no_check

  url 'https://www.qupzilla.com/startdownload?mac'
  name 'QupZilla'
  homepage 'https://www.qupzilla.com/'

  app 'QupZilla.app'
end
