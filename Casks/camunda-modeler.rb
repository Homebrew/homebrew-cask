cask 'camunda-modeler' do
  version '3.0.1'
  sha256 '7481a4e1b5667e467be6a3c5cdca0bb4f75fc04cd871a9eb0689bc62294d9b97'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac.zip"
  appcast 'https://camunda.com/download/modeler/'
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'Camunda Modeler.app'
end
