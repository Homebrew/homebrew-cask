cask 'camunda-modeler' do
  version '3.1.2'
  sha256 'bae7d7f4c4afa82ecf17a3d0725bb506456f49cc2a3ea9ce9ab2495114475b26'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac.zip"
  appcast 'https://camunda.com/download/modeler/'
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'Camunda Modeler.app'
end
