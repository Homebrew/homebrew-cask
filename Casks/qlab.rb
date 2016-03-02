cask 'qlab' do
  version :latest
  sha256 :no_check

  url 'https://figure53.com/downloads/QLab.zip'
  name 'QLab'
  homepage 'https://figure53.com/qlab/'
  license :commercial

  app 'QLab.app'
end
