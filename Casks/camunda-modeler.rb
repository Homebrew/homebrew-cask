cask 'camunda-modeler' do
  version '1.7.2'
  sha256 'e85c35225ffab49d7259691a2728383551eae9d3af157fab58d8f9ba571caa83'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-darwin-x64.tar.gz"
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'camunda-modeler/Camunda Modeler.app'
end
