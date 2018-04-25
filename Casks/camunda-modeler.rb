cask 'camunda-modeler' do
  version '1.13.1'
  sha256 'fe67b3c006f99ddb9e126d0c77cef52bcc14ba58636bddb461c389ee281a2f65'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-darwin-x64.tar.gz"
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'camunda-modeler/Camunda Modeler.app'
end
