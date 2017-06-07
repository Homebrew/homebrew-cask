cask 'camunda-modeler' do
  version '1.8.1'
  sha256 'b3a13bb3ce4783c68cad274a10a154766bdc4de27d87e28ff5d203be538d5743'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-darwin-x64.tar.gz"
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'camunda-modeler/Camunda Modeler.app'
end
