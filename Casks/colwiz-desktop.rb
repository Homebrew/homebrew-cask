cask 'colwiz-desktop' do
  version :latest
  sha256 :no_check

  url 'https://www.colwiz.com/update?app=colwiz.installer.v2.mac'
  name 'Colwiz'
  homepage 'https://www.colwiz.com'

  app 'Colwiz Desktop.app'
end
