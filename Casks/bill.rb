cask 'bill' do
  version :latest
  sha256 :no_check

  # myownapp.com was verified as official when first introduced to the cask
  url 'http://myownapp.com/downloads/Bill2.zip'
  name 'Bill'
  homepage 'http://billtheapp.com/'
  license :commercial

  app 'Bill 2.app'
end
