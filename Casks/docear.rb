cask 'docear' do
  version :latest
  sha256 :no_check

  url 'http://docear.org/download/docear.dmg'
  name 'Docear'
  homepage 'https://docear.org'
  license :gpl

  app 'Docear.app'
end
