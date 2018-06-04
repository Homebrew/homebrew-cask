cask 'camunda-modeler' do
  version '1.15.1'
  sha256 'f382873005fa0306d3ac105f4cf9f35d64de1892eaa8e68ea7b1b8eb57416345'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-darwin-x64.tar.gz"
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'camunda-modeler/Camunda Modeler.app'
end
