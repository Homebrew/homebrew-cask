cask 'camunda-modeler' do
  version '3.7.2'
  sha256 '450a48d916f08def2409aaa708ce677a86085d3ab7b89350f16e1a68342ddb1d'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac.zip"
  appcast 'https://camunda.com/download/modeler/'
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'Camunda Modeler.app'
end
