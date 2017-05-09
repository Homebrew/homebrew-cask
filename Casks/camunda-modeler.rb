cask 'camunda-modeler' do
  version '1.8.0'
  sha256 '325f33cb325e2ae1ab1bca204804fe6429589d8cc1ffbe45bcf9f8f74f1e5fab'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-darwin-x64.tar.gz"
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'camunda-modeler/Camunda Modeler.app'
end
