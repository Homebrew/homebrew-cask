cask 'openxcom' do
  version :latest
  sha256 :no_check

  url 'http://openxcom.org/file/1730/'
  name 'OpenXcom'
  homepage 'http://openxcom.org'
  license :gpl

  app 'OpenXcom.app'
end
