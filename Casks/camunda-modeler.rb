cask 'camunda-modeler' do
  version '2.0.0'
  sha256 '0cdbeb5aa552689458678d17faaabdbe39a37a27510732c3b7ac051a562693ee'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac.zip"
  appcast 'https://camunda.com/download/modeler/'
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'Camunda Modeler.app'
end
