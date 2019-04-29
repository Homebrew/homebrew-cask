cask 'camunda-modeler' do
  version '3.1.0'
  sha256 'b8d6305341d9f70b62e879da52bcad7fd3bde701455a450c45c3f52bddadc2d8'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac.zip"
  appcast 'https://camunda.com/download/modeler/'
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'Camunda Modeler.app'
end
