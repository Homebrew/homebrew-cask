cask 'camunda-modeler' do
  version '1.16.2'
  sha256 '498bb3ce8707d5c7d7f68ba3bafa7f2bca7498c2670770ec5841601324a82513'

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-darwin-x64.tar.gz"
  appcast 'https://camunda.com/download/modeler/'
  name 'Camunda Modeler'
  homepage 'https://camunda.org/'

  app 'camunda-modeler/Camunda Modeler.app'
end
