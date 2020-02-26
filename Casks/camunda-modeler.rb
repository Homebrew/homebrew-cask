cask 'camunda-modeler' do
  version '3.7.0'
  sha256 '2c41d6094171165f00ee1b0f099ba011b7a27e3b5457eb61a2603e435d4dc4c9'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac.zip"
  appcast 'https://camunda.com/download/modeler/'
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'Camunda Modeler.app'
end
