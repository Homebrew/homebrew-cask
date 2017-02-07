cask 'safarisort' do
  version :latest
  sha256 :no_check

  # macupdate.com was verified as official when first introduced to the cask
  url 'https://www.macupdate.com/download/34101/SafariSort.dmg'
  name 'SafariSort'
  homepage 'http://www.safarisort.com/'

  app 'SafariSort.app'
end
