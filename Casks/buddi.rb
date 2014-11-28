cask :v1 => 'buddi' do
  version :latest
  sha256 :no_check

  url 'http://buddi.digitalcave.ca/buddi.dmg'
  homepage 'http://buddi.digitalcave.ca/index.jsp'
  license :gpl

  app 'Buddi.app'
end
