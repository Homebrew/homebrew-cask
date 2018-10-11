cask 'camunda-modeler' do
  version '2.0.3'
  sha256 '5c31a2bd2c03676ec1f88479b4286035623bc80f7a93a632e45acd4bddaa66cc'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac.zip"
  appcast 'https://camunda.com/download/modeler/'
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'Camunda Modeler.app'
end
