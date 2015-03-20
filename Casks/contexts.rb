cask :v1 => 'contexts' do
  version :latest
  sha256 :no_check

  url 'https://contexts.co/releases/Contexts.zip'
  appcast 'https://contexts.co/appcasts/stable.xml'
  name 'Contexts'
  homepage 'https://contexts.co'
  license :commercial

  app 'Contexts.app'
end
