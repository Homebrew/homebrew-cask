cask 'camunda-modeler' do
  version '4.0.0'
  sha256 'f2ee40fe28b0fd7a3a5ed4db93091d18eea9c95c65ee0a25a16c78a809fbcfec'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac.zip"
  appcast 'https://camunda.com/download/modeler/'
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'Camunda Modeler.app'
end
