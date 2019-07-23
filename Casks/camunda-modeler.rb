cask 'camunda-modeler' do
  version '3.2.1'
  sha256 'f3882b3b2cb882c6da240ffb255c68c93531121569190217f9a7b055366a075a'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac.zip"
  appcast 'https://camunda.com/download/modeler/'
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'Camunda Modeler.app'
end
