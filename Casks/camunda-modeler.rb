cask 'camunda-modeler' do
  version '1.3.0'
  sha256 'a0d38a8195f7db7f689ca1ed2e9cab8fb8957559a517c327f98dc5c71ad21392'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-darwin-x64.tar.gz"
  name 'Camunda Modeler'
  homepage 'https://camunda.org'
  license :mit

  app 'camunda-modeler/Camunda Modeler.app'
end
