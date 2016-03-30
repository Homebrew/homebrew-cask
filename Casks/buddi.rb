cask 'buddi' do
  version :latest
  sha256 :no_check

  url 'http://buddi.digitalcave.ca/buddi.dmg'
  name 'Buddi'
  homepage 'http://buddi.digitalcave.ca/'
  license :gpl

  app 'Buddi.app'
end
