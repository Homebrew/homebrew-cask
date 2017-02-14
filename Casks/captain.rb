cask 'captain' do
  version :latest
  sha256 :no_check

  # dropbox.com/s/pkayzy14unr4r0a was verified as official when first introduced to the cask
  url 'https://www.dropbox.com/s/pkayzy14unr4r0a/Captain.dmg?dl=1'
  name 'Captain'
  homepage 'https://getcaptain.co/'

  app 'Captain.app'
end
