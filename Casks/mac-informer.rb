cask 'mac-informer' do
  version :latest
  sha256 :no_check

  url 'https://files.informer.com/simac.dmg'
  name 'Mac Informer'
  homepage 'https://macdownload.informer.com/landing/'

  app 'Mac Informer.app'

  zap trash: '~/Library/Application Support/MacInformer'
end
