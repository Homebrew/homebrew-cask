cask 'camunda-modeler' do
  version '1.5.1'
  sha256 'f6562e511acde034ff96f6bedb527479de8a35882a2fd0d388d471606d2ffc16'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-darwin-x64.tar.gz"
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'camunda-modeler/Camunda Modeler.app'
end
