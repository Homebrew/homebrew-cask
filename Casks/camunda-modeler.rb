cask 'camunda-modeler' do
  version '1.13.0'
  sha256 '352002ddb2b6c59630103e40087592d2f3be4427fbee3a6379c746bb29777811'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-darwin-x64.tar.gz"
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'camunda-modeler/Camunda Modeler.app'
end
