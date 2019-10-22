cask 'camunda-modeler' do
  version '3.4.1'
  sha256 '5d5afdfd405818f0ae1cef71e41cd7331b7048122c343193e73dd36ed11a0244'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac.zip"
  appcast 'https://camunda.com/download/modeler/'
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'Camunda Modeler.app'
end
