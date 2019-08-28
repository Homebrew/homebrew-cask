cask 'camunda-modeler' do
  version '3.3.1'
  sha256 '8a0081b9456404741a39435916107bd7d53a0a704b46c320eb83a6cd1b290898'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac.zip"
  appcast 'https://camunda.com/download/modeler/'
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'Camunda Modeler.app'
end
