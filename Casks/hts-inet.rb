cask 'hts-inet' do
  version :latest
  sha256 :no_check

  url 'http://www.htstechsupport.com/HTS_iNet.dmg'
  name 'HTS iNet'
  homepage 'http://www.htstechsupport.com/'
  license :commercial

  app 'HTS iNet.app'
end
