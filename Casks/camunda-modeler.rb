cask 'camunda-modeler' do
  version '1.16.0'
  sha256 'e5a8a9ac8088426664ca515f21dec4f49f1cff5ccb9bd11497d77ca3fa69131c'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-darwin-x64.tar.gz"
  appcast 'https://camunda.com/download/modeler/'
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'camunda-modeler/Camunda Modeler.app'
end
